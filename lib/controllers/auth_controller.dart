import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/views/admin_login_page.dart';
import 'package:rogami_rogami/views/welcome_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("Login Page");
      // Get.offAll(() => AdminLoginPage());
      Get.offAll(() => WelcomePage());
    } else {
      Get.offAll(() => WelcomePage());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
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

  void registerClientFromPage1(String company, String email, String password, String adminNumber){
    CollectionReference reference = FirebaseFirestore.instance.collection("ClientUser");
    Map <String,String> userdata = {
      "Name of company": company,
      "Email": email,
      "password": password,
      "Number of admins": adminNumber
    };
    print("register page kortase");
  }

}
