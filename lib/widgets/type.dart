import 'package:flutter/material.dart';

class TypeBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Tür Seçiniz",
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
}
