import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/controllers/firebase_client_controller.dart';

import '../controllers/auth_controller.dart';
import 'client_registration_page2.dart';

class ClientRegistrationPage1 extends StatelessWidget {
  // final TextEditingController nameOfCompany = TextEditingController();
  // final TextEditingController email= TextEditingController();
  // final TextEditingController password = TextEditingController();
  // final TextEditingController numberOfAdmins = TextEditingController();
  var companyNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var adminNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 22, right: 20),
                child: Text(
                  'Step 1 of 3',
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
                ),
              )
            ],
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
                    'Registration 1',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Give us company personal details",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: companyNameController,
                    decoration: InputDecoration(
                        hintText: 'Name of company',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: 'Create password',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: adminNumber,
                    decoration: InputDecoration(
                        hintText: 'Number of Admins',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  // onTap:
                  onTap: () {
                    // AuthController.instance.register(emailController.text.trim(),
                    //     passwordController.text.trim());
                    Get.offAll(ClientRegistrationPage2());
                    // registerPage1();
                    //
                  },
                  child: ListTile(
                    tileColor: Colors.black,
                    title: Text(
                      'Next',
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
                // GestureDetector(
                //   onTap:(){
                //     print('gesture detector clicked');
                //     registerClientFromPage1();
                //     },
                //   child:Container(
                //     color: Color(0xffe6f7f8),
                //     width: 450,
                //     height: 55,
                //     child: Padding(
                //       padding: EdgeInsets.fromLTRB(10,20,0,15),
                //       child: Text(
                //         "Health oragami",
                //         // textAlign: TextAlign.right,
                //
                //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.fromLTRB(110, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Have an account?",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Login",
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
  // void registerPage1(){
  //   controller.registerPage1(nameOfCompany.text, email.text, password.text, numberOfAdmins.text);
  // }

  void registerClientFromPage1() {
    AuthController.instance.registerClientFromPage1(
        uid: "",
        company: companyNameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        adminNumber: adminNumber.text.trim());
  }
}
