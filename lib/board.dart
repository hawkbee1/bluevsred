import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/entities/game_layer.dart';
import 'package:bluevsred/entities/game_map.dart';
import 'package:bluevsred/key_strings.dart';
import 'package:bluevsred/testUnit.dart';
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
  GameMap gameMap = sl();

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
    return Container(
      color: Colors.orangeAccent,
      height: gameMap.mapSize.y as double,
      width: gameMap.mapSize.x as double,
      child: Stack(
        key: const Key(BOARD_STACK),
        children: DisplayLayers(),
      ),
    );
  }

  List<Widget> DisplayLayers() {
    List<Widget> widgetList = [];
    gameMap.layerList.forEach((element) {
      Widget layerWidget;
      switch (element.layerType) {
        case LayerType.ground:
          layerWidget = Positioned(
            left: element.position.x,
            top: element.position.y,
            child: element.layerDisplay,
          );
          break;
        case LayerType.vegetation:
          // TODO: Handle this case.
          break;
        case LayerType.construction:
          // TODO: Handle this case.
          break;
        case LayerType.unit:
          layerWidget = UnitGestureDetector(
              unitPosition: element.position, child: TestUnit());
          break;
      }
      widgetList.add(layerWidget);
    });
    return widgetList;
  }
}
