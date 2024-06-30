import 'package:flutter/cupertino.dart';

extension WidgetExt on Widget {
  Widget expanded() {
    return Expanded(child: this);
  }

  Widget onTap(onTap, {HitTestBehavior behavior = HitTestBehavior.opaque}) {
    return GestureDetector(
      behavior: behavior,
      onTap: onTap,
      child: this,
    );
  }

}