import 'package:flutter/material.dart';
import 'package:select_filter/select_filter.dart';

class SelectListBuilder extends StatefulWidget {
  SelectListBuilder({
    this.selectedKey,
    this.selectedValue,
  });

  final String selectedKey;
  final int selectedValue;

  @override
  _TypeBuilderState createState() => _TypeBuilderState();
}

class _TypeBuilderState extends State<SelectListBuilder> {
  String selectedType;
  int selectedValue;

  @override
  void initState() {
    super.initState();
    selectedType = widget.selectedKey;
    selectedValue = widget.selectedValue;
  }

  var selectList = [
    "Western",
    "Animasyon",
    "Bilim Kurgu",
    "Dram",
    "Gizem",
    "Korku",
    "Komedi",
    "Western",
    "Animasyon",
    "Bilim Kurgu",
    "Dram",
    "Gizem",
    "Korku",
    "Komedi"
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false,
            pageBuilder: (BuildContext context, _, __) => SelectFilterBuilder(
              onChange: onChange,
              selectList: selectList,
              selectedIndex: selectedValue ?? 0,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            selectedType ?? "Tür Seçiniz",
            style: TextStyle(
              color: Color(0xFFBFFFD5),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFBFFFD5),
            width: 3,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }

  onChange(int key) {
    setState(() {
      selectedType = selectList[key];
      selectedValue = key;
    });
  }
}
