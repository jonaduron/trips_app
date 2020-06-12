import 'package:flutter/material.dart';
import 'package:tripsApp/back_gradient.dart';
import 'package:tripsApp/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGradient("Popular"),
        CardImageList()
      ],
    );
  }
}