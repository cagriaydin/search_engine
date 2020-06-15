import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:search_engine/widgets/range_slider.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  ExpandableController controller = ExpandableController();

  @override
  void initState() {
    controller.toggle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161f30),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ExpandablePanel(
            theme: ExpandableThemeData(
              iconColor: Colors.white,
              iconSize: 32,
            ),
            header: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
              child: Text(
                "Yapım yılı seç",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            expanded: RangeSliderBuilder(),
            controller: controller,
          ),
        ],
      ),
    );
  }
}
