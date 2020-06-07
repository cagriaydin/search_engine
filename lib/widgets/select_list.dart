import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:search_engine/widgets/blur.dart';

class SelectListBuilder extends StatelessWidget {
  final Function(int) onChange;
  final List<String> typeList;
  int selectedIndex;

  SelectListBuilder({this.onChange, this.typeList, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Material(
        color: Colors.black54,
        child: BlurBuilder(
          isVisible: true,
          child: Center(
            child: Container(
              width: 210,
              height: size.height,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Text(
                      typeList[index],
                      style: TextStyle(
                          color: getColor(index),
                          fontSize: getFontSize(index),
                          fontWeight: getFontWeight(index)),
                    ),
                  );
                },
                onIndexChanged: (index) => selectedIndex = index,
                scrollDirection: Axis.vertical,
                itemCount: typeList.length,
                viewportFraction: 0.1,
                loop: false,
                index: selectedIndex ?? 0,
                onTap: (index) {
                  onChange(index);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  double getFontSize(int index) {
    if (selectedIndex == index) {
      return 35;
    }
    if (selectedIndex + 1 == index || selectedIndex - 1 == index) {
      return 23;
    }
    return 18;
  }

  Color getColor(int index) {
    if (selectedIndex == index) {
      return Color(0xFFBFFFD5);
    }
    if (selectedIndex + 1 == index || selectedIndex - 1 == index) {
      return Color(0xFFBFFFD5).withOpacity(.7);
    }
    return Color(0xFFBFFFD5).withOpacity(.4);
  }

  FontWeight getFontWeight(int index) {
    if (selectedIndex == index) {
      return FontWeight.bold;
    }
    if (selectedIndex + 1 == index || selectedIndex - 1 == index) {
      return FontWeight.w500;
    }
    return FontWeight.w300;
  }
}
