import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app/user/repository/auth_repository.dart';

class BlocUser implements Bloc {

  final _authRepository = AuthRepository();

  // flujo de datos
  // Stream - firebase
  // Stream Controller
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  // casos de uso
  // 1. google sign in
  Future<FirebaseUser> signIn()  {
    return _authRepository.signInFirebase();
  }

  @override 
  void dispose() {
    
  }
}