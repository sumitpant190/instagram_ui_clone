import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey,
        ),

        //below the post buttons
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        //comments
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Text('Liked by'),
              Text(
                'Harry',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and'),
              Text('others', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
        //caption
        Padding(
          padding: EdgeInsets.only(left: 16, top: 8),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      ' I love the sight of a beautiful sunrise to start the day.')
            ]),
          ),
        )
      ],
    );
  }
}
