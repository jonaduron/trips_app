import 'package:flutter/material.dart';
import 'package:tripsApp/favorite_place.dart';

class FavoriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      
      margin: EdgeInsets.only(
        top: 320.0,
      ),
      child: ListView(
        children: <Widget>[
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
          FavoritePlace(),
        ],
      ),
    );
  }
}