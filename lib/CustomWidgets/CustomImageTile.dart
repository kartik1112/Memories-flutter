import 'package:flutter/material.dart';

class CustomImageTile extends StatelessWidget {
  const CustomImageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(fit: BoxFit.cover, "lib/assets/ProfileImage.png"),
    );
  }
}
