import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/user/bloc/bloc_user.dart';
import 'package:trips_app/user/ui/screens/sign_in.dart';

import 'trips_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        //home: TripsApp(), //TripsAppCupertino(),
        home: SignIn(),
      ),
      bloc: BlocUser(),
    );
  }
}
