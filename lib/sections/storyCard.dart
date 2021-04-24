import 'package:flutter/material.dart';
import 'package:instagram/widgets/roundProfileImage.dart';

class StoryCard extends StatelessWidget {
  final String label;
  final String profileImage;
  final bool isAddIcon;
  final bool isBoderEnabled;

  StoryCard(
      {@required this.label,
      @required this.profileImage,
      this.isAddIcon = false,
      this.isBoderEnabled = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RoundProfileImage(
            profileImage: profileImage,
            isAddIcon: isAddIcon,
            isBoderEnabled: isBoderEnabled,
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 2.5, top: 10),
            child: Text(label == null
                ? ""
                : label.length > 10
                    ? label.substring(0, 10) + "..."
                    : label),
          ),
        ],
      ),
    );
  }
}
