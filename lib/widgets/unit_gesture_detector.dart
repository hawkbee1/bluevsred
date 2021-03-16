import 'dart:math';

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
  Offset _mapOffset;
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
          return Draggable(
            onDragStarted: () {
              _updateMapOffset = true;
            },
            onDragUpdate: (details) {
              if (_updateMapOffset) {
                _mapOffset = Offset(details.globalPosition.dx - _position.dx,
                    details.globalPosition.dy - _position.dy);
                _updateMapOffset = false;
              }
            },
            onDraggableCanceled: (v, o) {
              _newPosition = Offset(o.dx - _mapOffset.dx, o.dy - _mapOffset.dy);
              setState(() {
                _position = _newPosition;
              });
            },
            feedback: Icon(Icons.details),
            child: widget.child,
          );
        },
      ),
    );
  }
}
