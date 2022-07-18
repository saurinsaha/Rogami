import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rogami_rogami/controllers/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        Text(
                          _controller.onboardingPages[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4),
                        Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }),
            Row(
              children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                        return Container(
                          margin: const EdgeInsets.all(4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _controller.selectedPageIndex.value == index
                                ? Colors.black
                                : Colors.grey,
                          ),
                        );
                      })),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: GestureDetector(
                onTap: () => _controller.forwardAction(),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.black,
                  ),
                  child: Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: FloatingActionButton(
                child: Text('Skip', style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.white,
                onPressed: () {},
                elevation: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
