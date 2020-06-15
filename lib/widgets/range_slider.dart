import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class RangeSliderBuilder extends StatefulWidget {
  @override
  _RangeSliderBuilderState createState() => _RangeSliderBuilderState();
}

RangeValues values = RangeValues(1942, 2020);
RangeLabels labels = RangeLabels('1942', '2020');

String minVal;
String maxVal;

class _RangeSliderBuilderState extends State<RangeSliderBuilder> {
  final handler = FlutterSliderHandler(
    child: Container(),
    decoration: BoxDecoration(
      color: Color(0xFFBFFFD5),
      borderRadius: BorderRadius.circular(50),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: FlutterSlider(
          tooltip: FlutterSliderTooltip(
            alwaysShowTooltip: true,
            format: (val) {
              String value = val.substring(0, val.indexOf('.'));
              return value;
            },
            positionOffset: FlutterSliderTooltipPositionOffset(top: -20),
            boxStyle: FlutterSliderTooltipBox(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            textStyle: TextStyle(fontSize: 17, color: Colors.white),
          ),
          handlerWidth: 30,
          values: [1942, 2020],
          rangeSlider: true,
          rtl: false,
          min: 1942,
          max: 2020,
          rightHandler: handler,
          handler: handler,
          trackBar: FlutterSliderTrackBar(
            inactiveTrackBar: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFBFFFD5).withOpacity(.1),
            ),
            activeTrackBar: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFBFFFD5).withOpacity(.9),
            ),
          ),
          onDragCompleted: (handlerIndex, lowerValue, upperValue) {
            minVal = lowerValue.toString();
            maxVal = lowerValue.toString();
          }),
    );
  }
}
