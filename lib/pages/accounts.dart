import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/bubble_storie.dart';
import 'package:instagram_ui_clone/utils/tabs/account_tab2.dart';
import 'package:instagram_ui_clone/utils/tabs/account_tab3.dart';
import 'package:instagram_ui_clone/utils/tabs/account_tab4.dart';

import '../utils/tabs/account_tab1.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sumit Pant',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //profile photo
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                  ],
                ),
                //number of posts, followers, following
                Column(
                  children: [
                    Text('237',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Text('10000',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text('80',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Following')
                  ],
                ),
              ],
            ),

            //Name and bio
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sumit Pant',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('Hey! I am a flutter developer!')
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //Buttons
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                'Edit Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),

            //stories
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStoris(name: 'Story 1'),
                  BubbleStoris(name: 'Story 2'),
                  BubbleStoris(name: 'Story 3'),
                  BubbleStoris(name: 'Story 4'),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
