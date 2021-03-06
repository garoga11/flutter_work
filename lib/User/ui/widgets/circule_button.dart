import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//ignore: must_be_inmutable
class CircleButton extends StatefulWidget{
  bool mini;
  var icon;
  double iconSize;
  var color;
  final VoidCallback onPressed;
  CircleButton(this.mini, this.icon, this.iconSize, this.color, @required this.onPressed);

    @override
    State<StatefulWidget> createState() {
      return _CircleButton();
    }
  }

  class _CircleButton extends State<CircleButton>{
    void onPressedButton(){}

    @override
    Widget build(BuildContext context) {
      return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: widget.onPressed,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Color(0xFF7AEEE0),
          ),
        ),
      );
    }
}