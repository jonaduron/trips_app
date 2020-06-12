import 'package:flutter/material.dart';
import 'package:tripsApp/back_gradient.dart';
import 'package:tripsApp/favorite_list.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        BackGradient("Popular"),
        FavoriteList()
      ],
    );
  }
}