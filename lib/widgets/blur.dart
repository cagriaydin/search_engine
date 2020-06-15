import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBuilder extends StatelessWidget {
  BlurBuilder({this.isVisible, this.child});
  bool isVisible;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Stack(
            fit: StackFit.expand,
            children: <Widget>[
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              child,
            ],
          )
        : child;
  }
}
