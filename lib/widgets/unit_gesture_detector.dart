import 'dart:math';

import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/entities/game_map_state.dart';
import 'package:flutter/material.dart';

class UnitGestureDetector extends StatefulWidget {
  UnitGestureDetector({this.child, this.unitPosition});
  final Widget child;
  final Point unitPosition;
  @override
  _UnitGestureDetectorState createState() => _UnitGestureDetectorState();
}

class _UnitGestureDetectorState extends State<UnitGestureDetector> {
  Offset _position;
  Offset _newPosition;
  Offset _dragStartPoint;
  Offset _dragEndPoint;
  bool _updateMapOffset = false;

  @override
  void initState() {
    _position = Offset(widget.unitPosition.x, widget.unitPosition.y);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _position.dy,
      left: _position.dx,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final GameMapState gameMapState = sl();
          return Draggable(
            onDragStarted: () {
              _updateMapOffset = true;
            },
            onDragUpdate: (details) {
              if (_updateMapOffset) {
                _dragStartPoint = Offset(
                    details.globalPosition.dx, details.globalPosition.dy);
                _updateMapOffset = false;
              } else {
                _dragEndPoint = Offset(
                    details.globalPosition.dx, details.globalPosition.dy);
              }
            },
            onDraggableCanceled: (v, o) {
              /// o is not trustworthy according to tests so we do computation
              /// without it.
              /// Draggable widget is not giving coordinates in same cartesian
              /// system as Positionned widget of the stack. Conversion between
              /// cartesian systems is done by applying scale on the movement.

              _newPosition = Offset(
                  _position.dx +
                      (_dragEndPoint.dx - _dragStartPoint.dx) /
                          gameMapState.scale,
                  _position.dy +
                      (_dragEndPoint.dy - _dragStartPoint.dy) /
                          gameMapState.scale);
              setState(() {
                _position = _newPosition;
              });
            },
            feedback:
                Transform.scale(scale: gameMapState.scale, child: widget.child),
            child: widget.child,
          );
        },
      ),
    );
  }
}
