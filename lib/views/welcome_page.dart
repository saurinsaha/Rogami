import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/controllers/welcome_page_controller.dart';

class WelcomePage extends StatelessWidget {
  WelcomePageController welcomePageController =
      Get.put(WelcomePageController());

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
      body: Container(
        margin: const EdgeInsets.all(20),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Choose your preferred sign in option',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text(
                'Client',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              trailing: Obx(() => Radio(
                    value: "Client",
                    groupValue: welcomePageController.selectedUser.value,
                    onChanged: (value) {
                      welcomePageController.onChangeUser(value);
                    },
                    activeColor: Colors.blue,
                    fillColor: MaterialStateProperty.all(Colors.black),
                  )),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              title: Text(
                'Admin',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              trailing: Obx(() => Radio(
                    value: "Admin",
                    groupValue: welcomePageController.selectedUser.value,
                    onChanged: (value) {
                      welcomePageController.onChangeUser(value);
                    },
                    activeColor: Colors.blue,
                    fillColor: MaterialStateProperty.all(Colors.black),
                  )),
            ),
            SizedBox(
              height: 14,
            ),
            ListTile(
              title: Text(
                'Staff',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              trailing: Obx(() => Radio(
                    value: "Staff",
                    groupValue: welcomePageController.selectedUser.value,
                    onChanged: (value) {
                      welcomePageController.onChangeUser(value);
                    },
                    activeColor: Colors.blue,
                    fillColor: MaterialStateProperty.all(Colors.black),
                  )),
            ),
            SizedBox(
              height: 34,
            ),
            GestureDetector(
              onTap: () {
                welcomePageController.selection_of_next_login_screen();
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
            SizedBox(
              height: 20,
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
    );
  }
}
