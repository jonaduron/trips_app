import 'package:flutter/material.dart';
import 'package:trips_app/user/ui/screens/profile_header.dart';
import 'package:trips_app/user/ui/widgets/profile_background.dart';
import 'package:trips_app/user/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePlacesList()
          ],
        ),
      ],
    );
  }

}