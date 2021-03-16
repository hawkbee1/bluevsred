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
          return GestureDetector(
            onPanUpdate: (detail) {
              setState(() {
                RenderBox renderBox = context.findRenderObject();
                Offset newPosition =
                    renderBox.globalToLocal(detail.globalPosition);
                _position = newPosition;
                print("final offset: ${_position.toString()}");
              });
            },
            child: widget.child,
          );
        },
      ),
    );
  }
}
