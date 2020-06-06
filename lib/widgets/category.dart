import 'package:flutter/material.dart';

class CategoryBuilder extends StatefulWidget {
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  final activeStyle = TextStyle(
    color: Color(0xFFBFFFD5).withOpacity(.9),
    fontSize: 40,
  );

  final passiveStyle = TextStyle(
    color: Color(0xFFBFFFD5).withOpacity(.5),
    fontSize: 25,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => {},
          child: Text(
            "Dizi",
            style: passiveStyle,
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: Text(
            "Film",
            style: activeStyle,
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: Text(
            "Kitap",
            style: passiveStyle,
          ),
        ),
      ],
    );
  }
}
