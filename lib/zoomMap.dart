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
    return GestureDetector(
      onScaleStart: _handleScaleStart,
      onScaleUpdate: _handleScaleUpdate,
      onDoubleTap: _handleScaleReset,
      child: Transform.scale(
        scale: _zoom,
        child: Draggable(
          feedback: Container(
            child: Center(child: Text('feedback')),
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(color: Colors.red),
          ),
          onDraggableCanceled: (v, o) {
            setState(() {
              RenderBox renderBox = context.findRenderObject();
              _position = renderBox.globalToLocal(o);
            });
          },
          child: Stack(

            children: <Widget>[
              Positioned(
                bottom: 100.0,
                right: 100.0,
                child: Container(
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('x: ${_position.dx.floor()} y: ${_position.dy
                        .floor()} nbColumns: $_zoom'),
                  )),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ),
              Positioned(
                top: _position.dy,
                left: _position.dx,
                child: Container(
                  child: Center(child: Text('draggable')),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              ),
              Positioned(
                top: _position.dy + 100.0,
                left: _position.dx + 100.0,
                child: Container(
                  child: Center(child: Text('Tile2')),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(color: Colors.green),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleScaleStart(ScaleStartDetails start) {
    setState(() {
      _previousOffset = _offset;
      _previousZoom = _zoom;
    });
  }

  void _handleScaleUpdate(ScaleUpdateDetails update) {
    setState(() {
      _zoom = _previousZoom * update.scale;
    });
  }

  void _handleScaleReset() {
    setState(() {
      _zoom = 1.0;
      _offset = Offset.zero;
      _position = Offset.zero;
    });
  }
}