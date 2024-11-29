import 'package:flutter/material.dart';

class HorizontalTabElement extends StatelessWidget {
  const HorizontalTabElement({
    super.key,
    required this.colorScheme,
    required this.tabLabel,
    required this.isActive,
    this.fontSize = 20,
  });

  final ColorScheme colorScheme;
  final String tabLabel;
  final bool isActive;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: (isActive)
                ? LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                        Colors.transparent,
                        colorScheme.primaryContainer,
                        colorScheme.primary
                      ])
                : null),
        child: Text(
          tabLabel,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
