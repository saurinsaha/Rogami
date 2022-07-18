import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rogami_rogami/controllers/auth_controller.dart';
import 'package:rogami_rogami/views/onboarding_page.dart';
import 'package:get/get.dart';

import 'controllers/instance_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initialBinding: InstanceBinding();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: OnboardingPage(),
    );
  }
}
