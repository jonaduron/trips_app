import 'package:flutter/cupertino.dart';
import 'package:trips_app/place/ui/widgets/description_place.dart';
import 'package:trips_app/place/ui/widgets/review_list.dart';

import 'header_appbar.dart';

class HomeTrip extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Maldives', 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n \n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}