import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/views/staff_registration_page.dart';

import 'client_registration_page2.dart';
import 'client_registration_page3.dart';

class ClientRegistrationPage3 extends StatelessWidget {
  final TextEditingController nameOfCompany = TextEditingController();
  final TextEditingController email= TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController numberOfAdmins = TextEditingController();

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
                margin: const EdgeInsets.only(top: 22,right: 20),
                child: Text('Step 2 of 3', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                ),),
              )
            ],
            backgroundColor: Colors.white,
            elevation: 0),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.all(20),
            width: double.maxFinite,
            height: double.maxFinite,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Registration 3',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add atleast 3 staffs to your portal",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Staff 1",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'PSW',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Staff 2",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'PSW',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Staff 3",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'PSW',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Staff 4",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'PSW',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                        // isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(14, 16, 206, 16)
                    ),
                    cursorColor: Colors.black,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  onTap: () {

                    // AuthController.instance.register(emailController.text.trim(),
                    //     passwordController.text.trim());
                    Get.offAll(StaffRegistrationPage());

                  },
                  child: ListTile(
                    tileColor: Colors.black,
                    title: Text(
                      "Let's go",
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
        )
    );
  }
}

