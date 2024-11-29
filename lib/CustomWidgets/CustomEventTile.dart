import 'package:flutter/material.dart';

class EventTileWidget extends StatelessWidget {
  const EventTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("Event Name"),
      subtitle: Row(
        children: [
          Icon(Icons.camera_alt),
          SizedBox(
            width: 10,
          ),
          Text("214"),
        ],
      ),
      trailing: SizedBox(
        height: double.infinity,
        width: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(left: 30, child: CircleAvatar()),
            Positioned(left: 60, child: CircleAvatar()),
            Positioned(left: 90, child: CircleAvatar()),
            Positioned(left: 120, child: CircleAvatar()),
            Positioned(
              left: 150,
              child: CircleAvatar(
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
