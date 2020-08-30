import 'package:bluevsred/unitGestureDetector.dart';
import 'package:flutter/material.dart';

//Board class are the container and stack forming the board/map of the game
class Unit extends StatefulWidget {
  @override
  _UnitState createState() => _UnitState();
}

class _UnitState extends State<Unit> {
  double height = 200.0;
  double width = 200.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return UnitGestureDetector(
      position: Offset(150, 200),
      child: Container(
        color: Colors.green,
        height: height,
        width: height,
        child: Text('YEAH !'),
      ),
    );
  }
}
