import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sacuit_exchange/pages/onbarding/get_started_screen.dart';
import 'package:sacuit_exchange/pages/onbarding/offers_screen.dart';
import 'package:sacuit_exchange/pages/onbarding/welcome_screen.dart';
import 'package:sacuit_exchange/resources/router.dart';
import 'package:sacuit_exchange/widgets/app_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_handlePageChange);
  }

  @override
  void dispose() {
    _pageController.removeListener(_handlePageChange);
    _pageController.dispose();
    super.dispose();
  }

  void _handlePageChange() {
    setState(() {
      _currentPageIndex = _pageController.page?.round() ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            children: const [
              WelcomeScreen(),
              WhatWeOfferScreen(),
              GetStartedScreen(),
            ],
          ),
          if (_currentPageIndex != 2)
            Positioned(
              top: 50,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  _pageController.animateToPage(2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
          if (_currentPageIndex != 2)
            Positioned(
              left: 50,
              right: 50,
              bottom: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 8.0,
                      dotColor: Color.fromARGB(255, 255, 255, 255),
                      activeDotColor: Color.fromARGB(255, 119, 0, 255),
                    ),
                    onDotClicked: (index) {},
                  ),
                ],
              ),
            ),
          if (_currentPageIndex == 2)
            Positioned(
              left: 50,
              right: 50,
              bottom: 20,
              child: Column(
                children: [
                  AppButton(
                    width: 300,
                    text: "Sign Up",
                    color: Colors.lightBlue,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signupScreen);
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 252, 252, 252),
                              fontSize: 16),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 197, 200, 202),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, Routes.loginScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 8.0,
                      dotColor: Color.fromARGB(255, 255, 255, 255),
                      activeDotColor: Color.fromARGB(255, 119, 0, 255),
                    ),
                    onDotClicked: (index) {},
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
