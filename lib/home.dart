import 'package:flutter/material.dart';
import 'package:instagram/sections/postCard.dart';
import 'package:instagram/sections/storyCard.dart';
import 'package:instagram/widgets/iconButtons.dart';

import 'constats.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Image.asset(logo),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButtons(
              icon: const Icon(Icons.add_box_outlined),
              action: () {
                print("Creat new post!");
              },
            ),
            actions: [
              IconButtons(
                icon: const Icon(Icons.messenger_outline),
                action: () {
                  print("Creat new post!");
                },
              ),
            ],
          ),
          body: ListView(
            children: [
              getStories(),
              Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              PostCard(
                profileImage: profile_5,
                profileName: "__profile_5",
                postImage: profile_5,
                postText: "Hello World",
                likes: "230 likes",
                comments: "View all 100 comments",
                time: "1 hour ago",
              ),
              PostCard(
                profileImage: profile_4,
                profileName: "profile_4",
                postImage: post2,
                postText: "Hello World",
                postSubText: "Kerala",
                likes: "330 likes",
                comments: "View all 150 comments",
                time: "2 hour ago",
              ),
              PostCard(
                profileImage: profile_1,
                profileName: "profile_1",
                postImage: post3,
                postText: "Sugolle?",
                postSubText: "Vaikom",
                likes: "330 likes",
                comments: "View all 150 comments",
                time: "2 hour ago",
              ),
              PostCard(
                profileImage: profile_4,
                profileName: "profile_4",
                postImage: post2,
                postText: "Hello World",
                postSubText: "Kerala",
                likes: "330 likes",
                comments: "View all 150 comments",
                time: "2 hour ago",
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 58,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 28,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 28,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.video_library,
                      color: Colors.black,
                      size: 28,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                      size: 28,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: CircleAvatar(
                      radius: 13,
                      backgroundImage: AssetImage(mesuijthks),
                    ),
                    label: "")
              ],
            ),
          )),
    );
  }

  Widget getStories() {
    return Container(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            label: "Your Story",
            profileImage: mesuijthks,
            isAddIcon: true,
          ),
          StoryCard(
            label: "profile_1",
            profileImage: profile_1,
            isBoderEnabled: true,
          ),
          StoryCard(
            label: "profile_2",
            profileImage: profile_2,
            isBoderEnabled: true,
          ),
          StoryCard(
            label: "profile_3",
            profileImage: profile_3,
            isBoderEnabled: true,
          ),
          StoryCard(
            label: "profile_4",
            profileImage: profile_4,
            isBoderEnabled: true,
          ),
        ],
      ),
    );
  }
}
