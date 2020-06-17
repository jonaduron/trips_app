import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/user/bloc/bloc_user.dart';
import 'package:trips_app/widgets/back_gradient.dart';
import 'package:trips_app/widgets/green_button.dart';

import '../../../trips_app.dart';

class SignIn extends StatefulWidget {
  @override 
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  BlocUser blocUser;

  @override 
  Widget build(BuildContext context) {
    blocUser = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // snapshot contiene nuestros datos (objeto user)
        if (snapshot.hasData || snapshot.hasError) {
          return signInGoogle();
        } else {
          return TripsApp();
        }
      }
    );
  }


  Widget signInGoogle() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, 
        children: <Widget>[
          BackGradient('', null),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome. \n This is your travel app.',
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              GreenButton(
                text: 'Login with Gmail', 
                onPressed: () {
                  blocUser.signIn()
                    .then((FirebaseUser user) {
                      print(user.displayName);
                    }
                  );
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          )
        ],
      )
    );
  }
}