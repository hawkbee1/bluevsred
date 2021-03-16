import 'package:flutter/material.dart';

class TestUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1,
      height: 1,
      child: Container(
        color: Colors.transparent,
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
    );
  }
}
