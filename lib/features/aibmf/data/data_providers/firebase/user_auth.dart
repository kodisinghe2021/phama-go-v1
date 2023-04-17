// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:logger/logger.dart';
// import 'package:pharma_go_v1_app/core/errors/snack_bar.dart';
// import 'package:pharma_go_v1_app/features/aibmf/data/repositories/auth/user_auth.dart';

// class FirebaseUserAuth implements UserAuth {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   //^ signin user with firebase
//   @override
//   Future<UserCredential?> registerUser(String email, String password) async {
//     try {
//       return await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//     } on FirebaseAuthException catch (e) {
//       Logger().e(e);
//       //showSnackBar('Error', e.code);
//       customDialogBar("Error dioalo", e.code);
//     }
//     throw UnimplementedError();
//   }

//   //^ logout user
//   @override
//   Future<void> logoutUser() async {
//     throw UnimplementedError();
//   }

//   //^ Login user
//   @override
//   Future<bool> loginUser(String email, String password) async {
//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return true;
//     } on FirebaseAuthException catch (e) {
//       customDialogBar("Error", e.code.toString());
//       return false;
//     }
//   }
// }
