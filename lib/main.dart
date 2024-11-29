import 'package:flutter/material.dart';
import 'package:memories/CustomWidgets/CustomImageTile.dart';
import 'package:memories/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: lightTheme,
    darkTheme: darkTheme,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
    home: const ImagesScreen(),
  ));
}

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Memories",
          style: TextStyle(color: colorScheme.secondary),
        ),
      ),
      body: Column(
        children: [
          Text(
            softWrap: true,
            "Birthday Party",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 60, color: colorScheme.primary),
          ),
          Expanded(
            child: SizedBox(
              child: GridView.count(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 3,
                children: const [
                  CustomImageTile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
