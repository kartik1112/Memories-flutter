import 'package:flutter/material.dart';
import 'package:memories/Screens/AuthScreen/SignUpContent.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                    child: Icon(
                      Icons.cloud,
                      color: colorScheme.primary,
                      size: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Memories",
                    style: TextStyle(fontSize: 25, color: colorScheme.primary),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SignUpContent(
                colorScheme: colorScheme,
              ),
            )
          ],
        ),
      ),
    );
  }
}
