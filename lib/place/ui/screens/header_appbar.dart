import 'package:flutter/material.dart';
import 'package:trips_app/place/ui/widgets/card_image_list.dart';
import 'package:trips_app/widgets/back_gradient.dart';

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