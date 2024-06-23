import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> SignIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ""}) async {
    try {
      // create user login disimpan ke firebase auth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // siapkan data yang akan disimpan ke firestore
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000000);

      // simpan data user ke dalam firestore(firebase database)
      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
