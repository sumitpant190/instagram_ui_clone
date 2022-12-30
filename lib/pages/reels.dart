import 'package:flutter/material.dart';

class UserReels extends StatelessWidget {
  const UserReels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Reels'), Icon(Icons.camera_alt)]),
        ),
        body: Container(
          color: Colors.grey[100],
          child: Center(
              child: Text(
            'Create Reels',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ));
  }
}
