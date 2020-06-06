import 'package:flutter/material.dart';
import 'package:search_engine/widgets/category.dart';
import 'package:search_engine/widgets/slider.dart';
import 'package:search_engine/widgets/type.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF373C52),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CategoryBuilder(),
            SizedBox(
              height: 20,
            ),
            TypeBuilder(),
            SizedBox(
              height: 50,
            ),
            SliderBuilder(),
          ],
        ),
      ),
    );
  }
}
