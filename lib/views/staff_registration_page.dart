import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'client_registration_page2.dart';
import 'client_registration_page3.dart';

class StaffRegistrationPage extends StatelessWidget {
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
                    'Staff Registration',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You have been registered as a staff, please\n add your password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Company:",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xffe6f7f8),
                  width: 450,
                  height: 55,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10,20,0,15),
                    child: Text(
                      "Health oragami",
                      // textAlign: TextAlign.right,

                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Enter your full name',
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
                  height: 16,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Type Password',
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
                  height: 16,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: TextFormField(
                    controller: nameOfCompany,
                    decoration: InputDecoration(
                        hintText: 'Re-type password',
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
                  height: 40,
                ),


                GestureDetector(
                  onTap: () {

                    // AuthController.instance.register(emailController.text.trim(),
                    //     passwordController.text.trim());
                    Get.offAll(ClientRegistrationPage3());

                  },
                  child: ListTile(
                    tileColor: Colors.black,
                    title: Text(
                      "Register",
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


              ],
            ),
          ),
        )
    );
  }
}

