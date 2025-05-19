import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';

/// A component that displays notifications for the player
class NotificationComponent extends PositionComponent {
  /// List of active notifications
  final List<_Notification> _activeNotifications = [];
  
  /// Maximum number of notifications to show at once
  final int maxNotifications;
  
  /// Duration each notification stays on screen
  final double notificationDuration;

  /// Creates a new notification component
  NotificationComponent({
    required Vector2 position,
    required Vector2 size,
    this.maxNotifications = 3,
    this.notificationDuration = 3.0, // seconds
  }) : super(
          position: position,
          size: size,
          anchor: Anchor.topRight,
        );

  /// Shows a new notification
  void showNotification(String message, {Color? color}) {
    final notification = _Notification(
      message: message,
      position: Vector2(0, _calculateNextNotificationY()),
      size: Vector2(size.x, 40),
      color: color ?? Colors.green.withOpacity(0.8),
      duration: notificationDuration,
      onComplete: () {
        _removeNotification(notification);
        _repositionNotifications();
      },
    );
    
    add(notification);
    _activeNotifications.add(notification);
    
    // If we have more notifications than allowed, remove the oldest one
    if (_activeNotifications.length > maxNotifications) {
      final oldest = _activeNotifications.first;
      oldest.removeFromParent();
      _activeNotifications.remove(oldest);
      _repositionNotifications();
    }
  }
  
  /// Calculates the Y position for the next notification
  double _calculateNextNotificationY() {
    if (_activeNotifications.isEmpty) {
      return 0;
    }
    
    // Position below the last notification with a small gap
    final lastNotification = _activeNotifications.last;
    return lastNotification.position.y + lastNotification.size.y + 5;
  }
  
  /// Removes a notification from the active list
  void _removeNotification(_Notification notification) {
    _activeNotifications.remove(notification);
  }
  
  /// Repositions all notifications after one is removed
  void _repositionNotifications() {
    double currentY = 0;
    for (final notification in _activeNotifications) {
      notification.moveTo(currentY);
      currentY += notification.size.y + 5;
    }
  }
}

/// A single notification that fades in and out
class _Notification extends PositionComponent {
  /// The message to display
  final String message;
  
  /// The background color
  final Color color;
  
  /// How long the notification should stay on screen
  final double duration;
  
  /// Callback when the notification is complete
  final Function() onComplete;
  
  /// Current opacity of the notification
  double _opacity = 0.0;
  
  /// Background paint
  late final Paint _backgroundPaint;
  
  /// Text style for the notification
  final TextPaint _textPaint = TextPaint(
    style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
  
  /// Timer for the notification lifecycle
  Timer? _timer;
  
  /// Current state of the notification
  _NotificationState _state = _NotificationState.fadeIn;

  /// Creates a new notification
  _Notification({
    required this.message,
    required Vector2 position,
    required Vector2 size,
    required this.color,
    required this.duration,
    required this.onComplete,
  }) : super(
          position: position,
          size: size,
          anchor: Anchor.topRight,
        ) {
    _backgroundPaint = Paint()..color = color.withOpacity(_opacity);
  }

  @override
  void onMount() {
    super.onMount();
    
    // Start the fade-in
    _state = _NotificationState.fadeIn;
    
    // Schedule the fade-out
    _timer = Timer(
      duration,
      onTick: () {
        _state = _NotificationState.fadeOut;
      },
    );
  }
  
  @override
  void update(double dt) {
    super.update(dt);
    
    if (_timer != null) {
      _timer!.update(dt);
    }
    
    // Update opacity based on current state
    switch (_state) {
      case _NotificationState.fadeIn:
        _opacity = (_opacity + dt * 3).clamp(0.0, 1.0);
        if (_opacity >= 1.0) {
          _state = _NotificationState.visible;
        }
        break;
      case _NotificationState.visible:
        // Do nothing, just wait for the timer
        break;
      case _NotificationState.fadeOut:
        _opacity = (_opacity - dt * 3).clamp(0.0, 1.0);
        if (_opacity <= 0.0) {
          _state = _NotificationState.removed;
          removeFromParent();
          onComplete();
        }
        break;
      case _NotificationState.removed:
        // Already removed
        break;
    }
    
    // Update background paint opacity
    _backgroundPaint.color = color.withOpacity(_opacity);
  }
  
  @override
  void render(Canvas canvas) {
    // Draw background with rounded corners
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(8));
    canvas.drawRRect(rrect, _backgroundPaint);
    
    // Draw text centered
    _textPaint.render(
      canvas, 
      message,
      Vector2(size.x / 2, size.y / 2),
      anchor: Anchor.center,
    );
  }
  
  /// Moves the notification to a new Y position with animation
  void moveTo(double newY) {
    position.y = newY;
  }
}

/// States of a notification in its lifecycle
enum _NotificationState {
  fadeIn,
  visible,
  fadeOut,
  removed,
}