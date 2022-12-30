import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/bubble_storie.dart';
import 'package:instagram_ui_clone/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Sumit',
    'Harry',
    'Obama ',
    'Sam',
    'Robert',
    'Jerry',
    'Zuckerburg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5),
                  Icon(Icons.favorite),
                  SizedBox(width: 5),
                  Icon(Icons.share)
                ],
              )
            ],
          )),
      body: Column(
        children: [
          //STORIES
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStoris(name: people[index]);
                  })),
          //USER POSTS
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    name: people[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
