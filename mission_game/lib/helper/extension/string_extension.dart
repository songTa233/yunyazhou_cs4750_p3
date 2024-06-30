import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension StringExt on String {
  /// common text
  Text exText({double? fontSize, Color? color, FontWeight? fontWeight, int? maxLines}) {
    return Text(
      this,
      maxLines: maxLines,
      style: TextStyle(
        color: color ?? Colors.orange,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight,
      ),
    );
  }

  /// common img
  Widget imgAsset(
      {double? width,
      double? height,
      String prefix = '',
      String type = '.webp',
      BoxFit? fit}) {
    return Image.asset(
      'assets/images/${prefix.isEmpty ? '' : '$prefix/'}$this$type',
      width: width,
      height: height,
      fit: fit,
    );
  }

  Widget imgAuthAsset(
      {double? width,
      double? height,
      String prefix = 'auth',
      String type = '.webp',
      BoxFit? fit}) {
    return imgAsset(
        width: width, height: height, prefix: prefix, type: type, fit: fit);
  }

  Widget imgProfileAsset(
      {double? width,
      double? height,
      String prefix = 'profile',
      String type = '.webp',
      BoxFit? fit}) {
    return imgAsset(
        width: width, height: height, prefix: prefix, type: type, fit: fit);
  }
}
