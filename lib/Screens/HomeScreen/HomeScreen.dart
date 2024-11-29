import 'package:flutter/material.dart';
import 'package:memories/CustomWidgets/CustomEventTile.dart';
import 'package:memories/CustomWidgets/CustomHorizontalTabElement.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
          Container(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
            height: 200,
            // color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 50, color: colorScheme.secondaryContainer),
                    ),
                    Text(
                      "Kartik",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 50, color: colorScheme.primary),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15, right: 15),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/ProfileImage.png"),
                    radius: 50,
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(width: 0.5, color: colorScheme.primary))),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalTabElement(
                    isActive: false,
                    tabLabel: "Events Joined",
                    colorScheme: colorScheme),
                HorizontalTabElement(
                    isActive: true,
                    tabLabel: "Events Created",
                    colorScheme: colorScheme),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                EventTileWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: colorScheme.primaryContainer,
        surfaceTintColor: colorScheme.onPrimary,
        child: Row(
          children: [
            HorizontalTabElement(
              fontSize: 17,
              colorScheme: colorScheme,
              tabLabel: "Join Event",
              isActive: false,
            ),
            HorizontalTabElement(
              fontSize: 17,
              colorScheme: colorScheme,
              tabLabel: "Create Event",
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        mini: false,
        onPressed: () {},
        tooltip: "Add Image",
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Icon(
          Icons.camera,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
