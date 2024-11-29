import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.colorScheme,
    required this.isPassword,
    required this.labelText,
    required this.controller,
  });

  final ColorScheme colorScheme;
  final bool isPassword;
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      cursorColor: colorScheme.primary,
      decoration: InputDecoration(
        label: Text(labelText),
        filled: true,
        fillColor: colorScheme.secondaryContainer,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.error),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary, width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
