import 'package:flutter/material.dart';
import 'package:instagram/widgets/iconButtons.dart';
import 'package:instagram/widgets/postImage.dart';

class PostCard extends StatelessWidget {
  final String profileImage;
  final String profileName;
  final String postImage;
  final String postText;
  final String postSubText;
  final String likes;
  final String comments;
  final String time;

  PostCard(
      {this.profileImage,
      this.profileName,
      this.postImage,
      this.postText,
      this.postSubText,
      this.likes,
      this.comments,
      this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590,
      child: Column(
        children: [
          Container(
            height: 65,
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(profileImage),
              ),
              title: Text(
                profileName == null ? "" : profileName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(postSubText == null ? "" : postSubText,
                  style: TextStyle(color: Colors.black)),
              trailing: IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                onPressed: () {
                  print("More Action Cliked");
                },
              ),
            ),
          ),
          PostImage(image: postImage),
          Container(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButtons(
                        action: () {
                          print("Like Action Cliked");
                        },
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                      IconButtons(
                        action: () {
                          print("Comment Action Cliked");
                        },
                        icon: Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                      IconButtons(
                        action: () {
                          print("Share Action Cliked");
                        },
                        icon: Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: IconButtons(
                    action: () {
                      print("Save Action Cliked");
                    },
                    icon: Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.fromLTRB(10, 10, 0, 2.5),
            child: Text(
              likes,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.fromLTRB(10, 5, 0, 2.5),
            child: Row(
              children: [
                Text(
                  profileName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  postText,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.fromLTRB(10, 5, 0, 2.5),
            child: Text(
              comments,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.fromLTRB(10, 5, 0, 2.5),
            child: Text(
              time,
              style: TextStyle(color: Colors.grey[600], fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
