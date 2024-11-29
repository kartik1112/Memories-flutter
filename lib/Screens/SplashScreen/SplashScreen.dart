import 'package:flutter/material.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            "lib/assets/SplashScreenImg.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
