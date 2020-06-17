import 'package:flutter/material.dart';

class GreenButton extends StatefulWidget {
  
  final String text;
  double height;
  double width;
  VoidCallback onPressed;

  GreenButton(
    { 
      Key key, 
      @required this.text, 
      @required this.onPressed, 
      this.height, 
      this.width
    }
  );

  @override 
  _GreenButtonState createState() => _GreenButtonState();
}

class _GreenButtonState extends State<GreenButton> {
  @override 
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFFa7ff84), // arriba
              Color(0xFF1cbb78), // abajo
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          )
        ),
        child: Center(
          child: Text(
            widget.text, 
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Lato',
              color: Colors.white
            )
          )
        )
      ),
    );
  }
}