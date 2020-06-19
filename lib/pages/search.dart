import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:search_engine/widgets/range_slider.dart';
import 'package:search_engine/widgets/tag.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  ExpandableController filmController = ExpandableController();
  ExpandableController yearController = ExpandableController();
  ExpandableController tagController = ExpandableController();

  @override
  void initState() {
    filmController.toggle();
    yearController.toggle();
    tagController.toggle();
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
                "Film seç",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            expanded: Container(),
            controller: filmController,
          ),
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
            controller: yearController,
          ),
          ExpandablePanel(
            theme: ExpandableThemeData(
              iconColor: Colors.white,
              iconSize: 32,
            ),
            header: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
              child: Text(
                "Anahtar kelime seç",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            expanded: TagBuilder(),
            controller: tagController,
          ),
        ],
      ),
    );
  }
}
