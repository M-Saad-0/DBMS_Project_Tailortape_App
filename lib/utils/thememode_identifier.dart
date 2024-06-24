import 'package:flutter/material.dart';

class ThememodeIdentifier {
  bool tell(BuildContext context) {
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }
}
