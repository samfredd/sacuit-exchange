import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sacuit_exchange/resources/router.dart';
import 'package:sacuit_exchange/widgets/app_button.dart';
import 'package:sacuit_exchange/widgets/app_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppTextfield(
                    label: "First Name",
                    hint: "Your first name",
                    keyboardType: TextInputType.name,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextfield(
                    label: "Last Name",
                    hint: "Your lastname",
                    keyboardType: TextInputType.name,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 20,
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
                    label: "Phone Number",
                    hint: "xxxx-xxxx-xxxx-xxxx",
                    keyboardType: TextInputType.phone,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
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
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                              color: Colors.lightBlue,
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
