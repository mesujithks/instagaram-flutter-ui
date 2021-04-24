import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  final String image;

  PostImage({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Image.asset(image, fit: BoxFit.fitWidth),
      ),
    );
  }
}
