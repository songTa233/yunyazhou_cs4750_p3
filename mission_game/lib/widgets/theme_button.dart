import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
    this.child
  });

  final double? width;
  final double? height;
  final String? text;
  final Function? onPressed;
  final Widget? child;

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: widget.width ?? 100.w,
      height: widget.height ?? 50.h,
      onPressed: () {
        widget.onPressed?.call();
      },
      isThreeD: true,
      animate: true,
      borderRadius: 20.r,
      backgroundColor: const Color(0xffFBC399),
      shadowColor: const Color(0xffEA9975),
      child: widget.child ?? Text(widget.text ?? '', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
    );
  }
}
