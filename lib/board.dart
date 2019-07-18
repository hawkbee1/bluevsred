import 'package:flutter/material.dart';


//Board class are the container and stack forming the board/map of the game
class Board extends StatefulWidget {
  final Offset offset;

  Board({Key key, this.offset}) : super(key: key);
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
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
,
        ],
      ),
    );
  }
}
