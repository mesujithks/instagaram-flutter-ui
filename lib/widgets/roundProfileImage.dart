import 'package:flutter/material.dart';

class RoundProfileImage extends StatelessWidget {
  final String profileImage;
  final bool isAddIcon;
  final bool isBoderEnabled;

  RoundProfileImage(
      {@required this.profileImage,
      this.isAddIcon = false,
      this.isBoderEnabled = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 5, right: 2.5),
          decoration: isBoderEnabled
              ? BoxDecoration(
                  border: Border.all(color: Colors.red, width: 2),
                  shape: BoxShape.circle)
              : BoxDecoration(
                  border: Border.all(color: Colors.white54, width: 2),
                  shape: BoxShape.circle),
          child: Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(profileImage),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: isAddIcon
              ? Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Icon(
                    Icons.add,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              : SizedBox(),
        )
      ],
    );
  }
}
