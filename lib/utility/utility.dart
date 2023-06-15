import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/auth/sign_up.dart';
import 'package:quiz_app_flutter/style/style.dart';

class AuthenticationClass {
  Future Login(email, password, context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user!.uid.isNotEmpty) {
        print("work");

        Navigator.push(context, MaterialPageRoute(builder: (_) => Sign_up()));
      } else
        print("Not work");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
