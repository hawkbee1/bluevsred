import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  final Offset offset;

  DraggableWidget({Key key, this.offset}) : super(key: key);
  @override
  _StateDraggableWidget createState() => _StateDraggableWidget();
}

class _StateDraggableWidget extends State<DraggableWidget> {
  double height = 100.0;
  double width = 100.0;
  Offset _position;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _position = widget.offset;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 100.0,
            right: 100.0,
            child: Container(
              child: Center(child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('x: ${_position.dx.floor()} y: ${_position.dy.floor()}'),
              )),
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          Positioned(
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
          ),
        ],
      ),
    );
  }
}
