import 'package:flutter/material.dart';
import 'package:rogami_rogami/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/views/welcome_page.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
      Get.to(() => WelcomePage());
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/images/img_92690coronado.png',
        'Control and manage staffs \n and shifts',
        'Lorem ipsum dolor sit amet, consecteturadipiscing elit.\n Quis nibh sed elit nisi tortor. Lectus massa ac.'),
    OnboardingInfo(
        'assets/images/img_92690coronado_1.png',
        'View and manage shifts, Clock in and clock out',
        'Lorem ipsum dolor sit amet, consecteturadipiscing elit.Quis nibh sed elit nisi tortor. Lectus massa ac.')
  ];
}
