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
    return           Positioned(
      top: _position.dy,
      left: _position.dx,
      child: Draggable(
        feedback: Container(
          child: Center(child:Text('feedback')),
          height: 80.0,
          width: 120.0,
          decoration: BoxDecoration(color: Colors.red),
        ),
        child: Container(
          child: Center(child:Text('draggable')),
          height: 150.0,
          width: 120.0,
          decoration: BoxDecoration(color: Colors.green),
        ),
        onDraggableCanceled: (v,o) {
          setState(() {
            RenderBox renderBox = context.findRenderObject();
            _position = renderBox.globalToLocal(o);
          });
        },
      ),
    );
  }
}
