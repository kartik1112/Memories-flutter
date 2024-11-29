import 'package:flutter/material.dart';
import 'package:memories/CustomWidgets/CustomButton.dart';
import 'package:memories/CustomWidgets/CustomTextField.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 60, color: colorScheme.primary),
            ),
            Text(
              "Create | Capture | Connect",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 18, color: colorScheme.onSecondaryContainer),
            ),
          ],
        ),
        Column(
          children: [
            CustomTextWidget(
              controller: nameController,
              labelText: "Your Name",
              isPassword: false,
              colorScheme: colorScheme,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextWidget(
              controller: emailController,
              labelText: "Email",
              isPassword: false,
              colorScheme: colorScheme,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextWidget(
              controller: passwordController,
              labelText: "Password",
              isPassword: true,
              colorScheme: colorScheme,
            ),
          ],
        ),
        Row(
          children: [
            CustomButton(
                buttonLabel: "Create Account",
                onPressed: () {},
                colorScheme: colorScheme),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(color: colorScheme.secondary),
              ),
              Text(
                "Sign In",
                textAlign: TextAlign.right,
                style: TextStyle(color: colorScheme.primary),
              )
            ],
          ),
        )
      ],
    );
  }
}
