import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/views/client_registration_page_1.dart';

import '../controllers/auth_controller.dart';

class ClientLoginPage extends StatelessWidget {
  const ClientLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            elevation: 0),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Client Sign in',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome Back,let's sign you in",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email address',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Forgot Password?",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                GestureDetector(
                  onTap: () {

                      // AuthController.instance.register(emailController.text.trim(),
                      //     passwordController.text.trim());
                    Get.offAll(ClientRegistrationPage1());

                  },
                  child: ListTile(
                    tileColor: Colors.black,
                    title: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 60.0),
                      ),
                      Text(
                        "Don't have an account?",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                      ),
                      Text(
                        "Register Now",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
