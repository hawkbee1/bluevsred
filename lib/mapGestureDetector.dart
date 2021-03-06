import 'package:bluevsred/core/injection_container.dart';
import 'package:bluevsred/entities/game_map_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// this zoom object is based on the medium article of Bárbara Watanabe :
// https://medium.com/@barbswatanabe/zoom-draggable-your-images-with-flutter-a32ac166dadd
// after some rework we drag and zoom with just one gestureDetector since scale has all we need

class MapGestureDetector extends StatefulWidget {
  final Offset position;
  final Widget child;

  MapGestureDetector({Key key, this.position, this.child}) : super(key: key);
  @override
  _MapGestureDetectorState createState() => _MapGestureDetectorState();
}

class _MapGestureDetectorState extends State<MapGestureDetector> {
  final GameMapState gameMapState = sl();
  double _previousZoom;
  Offset _position;
  Widget _child;
  Offset _pointerOffset;

  @override
  void initState() {
    gameMapState.scale = 1.0;
    _previousZoom = null;
    _position = widget.position;
    _child = widget.child;
    _pointerOffset = Offset(0.0, 0.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _position.dx,
          top: _position.dy,
          child: Transform.scale(
            scale: gameMapState.scale,
            child: GestureDetector(
              onScaleStart: _handleScaleStart,
              onScaleUpdate: _handleScaleUpdate,
              onDoubleTap: _handleScaleReset,
              child: _child,
            ),
          ),
        )
      ],
    );
  }

  void _handleScaleStart(ScaleStartDetails start) {
    setState(() {
//      _position is in body coordinates and focalPoint is in screen coordinates. we need to adjust y value with difference between both coordinates
//    We do the maths also for x just in case
      _pointerOffset = Offset(start.focalPoint.dx - _position.dx,
          start.focalPoint.dy - _position.dy);
      _previousZoom = gameMapState.scale;
    });
  }

  void _handleScaleUpdate(ScaleUpdateDetails update) {
    setState(() {
      gameMapState.scale = _previousZoom * update.scale;
      _position = Offset(update.focalPoint.dx - _pointerOffset.dx,
          update.focalPoint.dy - _pointerOffset.dy);
    });
  }

  void _handleScaleReset() {
    setState(() {
      gameMapState.scale = 1.0;
      _position = Offset.zero;
    });
  }
}
