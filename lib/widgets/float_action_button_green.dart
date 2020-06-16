import 'package:flutter/material.dart';

class FloatActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() { 
    return _FloatActionButtonGreenState();
  }
}

class _FloatActionButtonGreenState extends State<FloatActionButtonGreen> {
  
  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Favorating"),
      )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border
      ),
    );
  }
}