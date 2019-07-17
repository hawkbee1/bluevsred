import 'package:flutter/material.dart';

// this zoom object is based on the madium article of Bárbara Watanabe :
// https://medium.com/@barbswatanabe/zoom-draggable-your-images-with-flutter-a32ac166dadd

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
  Offset _previousOffset;
  Offset _offset;
  Offset _position;
  Widget _child;
  double height = 100.0;
  double width = 100.0;

  @override
  void initState() {
    _zoom = 1.0;
    _previousZoom = null;
    _offset = Offset.zero;
    _position = widget.position;
    _child = widget.child;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
        left: _position.dx,
        top: _position.dy,
        child: Draggable(
          child: GestureDetector(
            onScaleStart: _handleScaleStart,
            onScaleUpdate: _handleScaleUpdate,
            onDoubleTap: _handleScaleReset,
            child: Transform.scale(
              scale: _zoom,
              child: _child,
            ),
          ),
          onDraggableCanceled: (velocity, offset) { //When you stop moving the image, it is necessary to setState the new coordinates
            setState(() {
              _position = offset;
            });
          },
          feedback: Container( //Response when moving the image. Increase the width and height to 100.0 to see the difference
            width: 100.0,
            height: 100.0,
            child: _child,
          ),
        ),
      )],
    );
  }

  void _handleScaleStart(ScaleStartDetails start) {
    print('_handleScaleStart');
    setState(() {
      _previousOffset = _offset;
      _previousZoom = _zoom;
    });
  }

  void _handleScaleUpdate(ScaleUpdateDetails update) {
    print('_handleScaleUpdate');

    setState(() {
      _zoom = _previousZoom * update.scale;
    });
  }

  void _handleScaleReset() {
    print('_handleScaleReset');
    setState(() {
      _zoom = 1.0;
      _offset = Offset.zero;
      _position = Offset.zero;
    });
  }
}