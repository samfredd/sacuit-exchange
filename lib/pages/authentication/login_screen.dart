import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sacuit_exchange/resources/router.dart';
import 'package:sacuit_exchange/widgets/app_button.dart';
import 'package:sacuit_exchange/widgets/app_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppTextfield(
                    label: "Email Address",
                    hint: "someone@mail.com",
                    keyboardType: TextInputType.emailAddress,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextfield(
                    label: "Password",
                    hint: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  AppButton(
                    width: 300,
                    text: "Login",
                    color: Colors.lightBlue,
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.homePage);
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don`t have an account? ',
                          style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 16),
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Theme.of(context)
                                .primaryColorDark
                                .withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, Routes.signupScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
