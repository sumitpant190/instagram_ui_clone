// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BubbleStoris extends StatelessWidget {
  const BubbleStoris({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration:
                BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
          ),
          SizedBox(height: 5),
          Text(name)
        ],
      ),
    );
  }
}
