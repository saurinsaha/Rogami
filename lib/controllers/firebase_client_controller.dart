import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rogami_rogami/views/successful_login_dashboard.dart';
import 'package:rogami_rogami/views/welcome_page.dart';


class FirebaseClientController extends GetxController{
  FirebaseAuth _auth=FirebaseAuth.instance;
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value?.email;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void registerPage1(String companyName, String email, String password, String numberOfAdmins) async
  {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password).
      then((value) => Get.offAll(SuccessfulLoginDashboard()));
    }catch(e){
      Get.snackbar("About User", "User message",
          backgroundColor: Colors.grey,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
    }


  void registerPage2(String admin1Email, String admin2Email, String admin3Email, String admin4Email){

  }

  void completeRegistration(){

  }

  void login(String email, String password)async
  {
    try{
      await _auth.signInWithEmailAndPassword(
          email: email, password: password).
      then((value) => Get.offAll(WelcomePage()));
    }catch(e){

      Get.snackbar("About User", "User message",
          backgroundColor: Colors.grey,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed. Please try again.",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void signout()async{
    await _auth.signOut();
  }

  }
