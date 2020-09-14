import 'package:bluevsred/key_strings.dart';
import 'package:flutter/material.dart';

class TestUnit extends StatefulWidget {
  final position;
  TestUnit({this.position});

  @override
  _TestUnitState createState() => _TestUnitState();
}

class _TestUnitState extends State<TestUnit> {
  Offset _position;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _position = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _position.dy,
      left: _position.dx,
      child: Draggable(
        key: Key(GESTURE_DETECTOR),
        feedback: Container(
          child: Center(child: Text('feedback')),
          height: 80.0,
          width: 120.0,
          decoration: BoxDecoration(color: Colors.red),
        ),
        child: Container(
          child: Center(child: Text('draggable')),
          height: 150.0,
          width: 120.0,
          decoration: BoxDecoration(color: Colors.green),
        ),
        onDraggableCanceled: (v, o) {
          print('canceled');
          setState(() {
            RenderBox renderBox = context.findRenderObject();
            _position = renderBox.globalToLocal(o);
          });
        },
        onDragStarted: () {
          print('started');
        },
        onDragCompleted: () {
          print('completed');
        },
      ),
    );
  }
}
