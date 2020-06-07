import 'package:flutter/material.dart';
import 'package:search_engine/widgets/select_list.dart';

class TypeBuilder extends StatefulWidget {
  String selectedType;
  int selectedValue;

  TypeBuilder({this.selectedType});

  @override
  _TypeBuilderState createState() => _TypeBuilderState();
}

class _TypeBuilderState extends State<TypeBuilder> {
  var typeList = [
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
            pageBuilder: (BuildContext context, _, __) => SelectListBuilder(
              onChange: onTypeSelectorChange,
              typeList: typeList,
              selectedIndex: widget.selectedValue ?? 0,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.selectedType ?? "Tür Seçiniz",
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

  onTypeSelectorChange(int type) {
    widget.selectedType = typeList[type];
    widget.selectedValue = type;
    setState(() {});
  }
}
