import 'package:flutter/cupertino.dart';

extension IntExt on int {
  Duration get s => Duration(seconds: this);

  Duration get ms => Duration(milliseconds: this);

  SizedBox get widthBox => SizedBox(width: double.parse('$this'));
  SizedBox get heightBox => SizedBox(height: double.parse('$this'));
}

extension DoubleExt on double {
  SizedBox get widthBox => SizedBox(width: this);
  SizedBox get heightBox => SizedBox(height: this);
}