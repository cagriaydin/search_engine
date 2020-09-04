import 'package:flutter/material.dart';
import 'package:search_engine/pages/search.dart';
import 'package:search_engine/widgets/category.dart';
import 'package:search_engine/widgets/search.dart';
import 'package:search_engine/widgets/slider.dart';
import 'package:search_engine/widgets/select_list.dart';

class HomePage extends StatelessWidget {
  final String type;

  HomePage({this.type});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF161f30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoryBuilder(),
              SizedBox(
                height: 20,
              ),
              SelectListBuilder(),
              SizedBox(
                height: 50,
              ),
              Container(),
              SliderBuilder(),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SearchPage();
                  },
                )),
                child: SearchBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
