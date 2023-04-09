import 'package:flutter/material.dart';

extension Spaceer on num {
  Widget toWidthSpace() {
    var shadow = this;
    return SizedBox(width: double.tryParse("$shadow"),);
  }

  Widget toHeightSpace() {
    var shadow = this;
    return SizedBox(height: double.tryParse("$shadow"),);
  }
}