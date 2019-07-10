import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  Offset offset;

  DraggableWidget({Key key, this.offset}) : super(key: key);
  @override
  _StateDraggableWidget createState() => _StateDraggableWidget();
}

class _StateDraggableWidget extends State<DraggableWidget> {
  double height = 100.0;
  double width = 100.0;
  double zoom = 1.0;
  double previousZoom;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.offset = Offset(0.0,0.0);
    zoom = 1.0;
    previousZoom = null;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton(
                child: Icon(Icons.zoom_in),
                onPressed: () {
                  setState(() {
                    if(zoom < 1.8) zoom = zoom+0.1;
                  });
                },
              ),
              RaisedButton(
                child: Icon(Icons.zoom_out),
                onPressed: () {
                  setState(() {
                    if(zoom>0.2) zoom = zoom-0.1;
                  });
                },
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            height: 400.0,
            child: Transform.scale(
              scale: zoom,
              child: Draggable(
                feedback: Container(
                  child: Center(child:Text('feedback')),
                  height: 120.0,
                  width: 120.0,
                  decoration: BoxDecoration(color: Colors.red),
                ),
                onDraggableCanceled: (v,o) {
                  setState(() {
                    RenderBox renderBox = context.findRenderObject();
                    widget.offset = renderBox.globalToLocal(o);
                  });
                },
                child: Stack(

                  children: <Widget>[
                    Positioned(
                      bottom: 100.0,
                      right: 100.0,
                      child: Container(
                        child: Center(child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('x: ${widget.offset.dx.floor()} y: ${widget.offset.dy.floor()} nbColumns: $zoom'),
                        )),
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                    ),
                    Positioned(
                      top: widget.offset.dy,
                      left: widget.offset.dx,
                      child: Container(
                        child: Center(child:Text('draggable')),
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(color: Colors.green),
                      ),
                    ),
                    Positioned(
                      top: widget.offset.dy+100.0,
                      left: widget.offset.dx+100.0,
                      child: Container(
                        child: Center(child:Text('Tile2')),
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(color: Colors.green),
                      ),
                    )                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
