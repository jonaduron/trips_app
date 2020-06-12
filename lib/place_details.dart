import 'package:flutter/material.dart';
import 'package:tripsApp/favorite_button.dart';

class PlaceDetails extends StatelessWidget {

  String placeName;
  String placeActivities;
  String placeInfo;

  PlaceDetails(this.placeName, this.placeActivities, this.placeInfo);

  @override
  Widget build(BuildContext context) {
    
    final detailsCard = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            placeName,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            placeActivities,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 15.0,
              color: Colors.grey[500]
            ),
          ),
          Text(
            placeInfo,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 17.0,
              color: Colors.orange[800]
            )
          )
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        detailsCard,
        FavoriteButton(),
      ],
    );
  }

}