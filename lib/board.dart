import 'dart:math';

import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/entities/game_map.dart';
import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/widgets/unit_gesture_detector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Board class are the container and stack forming the board/map of the game
class Board extends StatefulWidget {
  const Board({Key key, this.offset}) : super(key: key);

  final Offset offset;

  @override
  _BoardState createState() => _BoardState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Offset>('offset', offset));
  }
}

class _BoardState extends State<Board> {
  double height = 100;
  double width = 100;
  Offset _position;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<double>('height', height));
    // ignore: cascade_invocations
    properties.add(DiagnosticsProperty<double>('width', width));
    // ignore: cascade_invocations
    properties.add(DiagnosticsProperty<Offset>('_position', _position));
  }

  @override
  void initState() {
    super.initState();
    _position = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    GameMap gameMap = sl();
    return Container(
      color: Colors.orangeAccent,
      height: gameMap.mapSize.y as double,
      width: gameMap.mapSize.x as double,
      child: Stack(
        key: const Key(BOARD_STACK),
        children: <Widget>[
          UnitGestureDetector(
              unitPosition: Point(10.0, 10.0),
              child: SizedBox(
                width: 1,
                height: 1,
                child: Container(
                  color: Colors.green,
                  child: Transform.translate(
                    offset: Offset(-0.57, -0.57),
                    child: Transform.scale(
                        scale: 0.05,
                        child: Icon(
                          Icons.ac_unit_rounded,
                          color: Colors.yellowAccent,
                        )),
                  ),
                ),
              )),
          Positioned(
              left: 20,
              top: 10,
              child: SizedBox(
                width: 1,
                height: 1,
                child: Container(
                  color: Colors.pink,
                ),
              )),
          Positioned(
              left: 25,
              top: 15,
              child: SizedBox(
                width: 1,
                height: 1,
                child: Container(
                  color: Colors.pink,
                ),
              )),
          Positioned(
              left: 12,
              top: 50,
              child: SizedBox(
                width: 1,
                height: 1,
                child: Container(
                  color: Colors.pink,
                ),
              )),
          Positioned(
              left: 23,
              top: 34,
              child: SizedBox(
                width: 1,
                height: 1,
                child: Container(
                  color: Colors.pink,
                ),
              ))
        ],
      ),
    );
  }
}
