import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_app/user/repository/firebase_authentication.dart';

class AuthRepository {
  final firebaseAuthentication = FirebaseAuthentication();

  Future<FirebaseUser> signInFirebase() => firebaseAuthentication.signIn();
}