import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/testUnit.dart';
import 'package:bluevsred/unit.dart';
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
  Widget build(BuildContext context) => Container(
        color: Colors.orangeAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          key: const Key(BOARD_STACK),
          children: <Widget>[
            Unit(),
            TestUnit(
              position: _position,
            ),
          ],
        ),
      );
}
