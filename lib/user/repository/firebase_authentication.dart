import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthentication {
  final FirebaseAuth _auth = FirebaseAuth.instance; 
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<FirebaseUser> signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser _user = await _auth.signInWithCredential(
      GoogleAuthProvider.getCredential(
        idToken: gSA.idToken, 
        accessToken:  gSA.accessToken
      )
    );

    return _user;
  }
}