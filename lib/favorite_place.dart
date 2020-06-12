import 'package:flutter/material.dart';
import 'package:tripsApp/place_details.dart';
import 'package:tripsApp/place_photo.dart';

class FavoritePlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PlacePhoto(),
        PlaceDetails('El Himalaya papi', 'fumar hierba y marihuana con los compas', 'agarré el bus 123')
      ],
    );
  }
}