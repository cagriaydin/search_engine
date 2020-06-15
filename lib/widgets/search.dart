import 'package:flutter/material.dart';

class SearchBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Color(0xFFBFFFD5),
          width: 2,
        ),
      ),
      child: Icon(
        Icons.search,
        color: Color(0xFFBFFFD5),
        size: 30,
      ),
    );
  }
}
