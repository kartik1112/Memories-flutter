import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.colorScheme,
    required this.buttonLabel,
    required this.onPressed,
  });

  final ColorScheme colorScheme;
  final String buttonLabel;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primaryContainer,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonLabel,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
