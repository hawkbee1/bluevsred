import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// this zoom object is based on the madium article of Bárbara Watanabe :
// https://medium.com/@barbswatanabe/zoom-draggable-your-images-with-flutter-a32ac166dadd
// after some rework we drag and zoom with just one gestureDetector since scale has all we need

class ZoomMap extends StatefulWidget {
  final Offset position;
  final Widget child;

  ZoomMap({Key key, this.position, this.child}) : super(key: key);
  @override
  _ZoomMapState createState() => _ZoomMapState();
}

class _ZoomMapState extends State<ZoomMap> {
  double _zoom;
  double _previousZoom;
  Offset _position;
  Widget _child;
  Offset _pointerOffset;

  @override
  void initState() {
    _zoom = 1.0;
    _previousZoom = null;
    _position = widget.position;
    _child = widget.child;
    _pointerOffset = Offset(0.0,0.0);
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
            scale: _zoom,
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
      _pointerOffset = Offset(start.focalPoint.dx - _position.dx, start.focalPoint.dy - _position.dy);
      _previousZoom = _zoom;
    });
  }

  void _handleScaleUpdate(ScaleUpdateDetails update) {
    setState(() {
      _zoom = _previousZoom * update.scale;
      _position = Offset(update.focalPoint.dx - _pointerOffset.dx, update.focalPoint.dy - _pointerOffset.dy);
    });
  }

  void _handleScaleReset() {
    setState(() {
      _zoom = 1.0;
      _position = Offset.zero;
    });
  }
}
