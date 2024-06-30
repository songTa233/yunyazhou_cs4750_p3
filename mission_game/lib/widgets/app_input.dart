import 'package:flutter/material.dart';
import 'package:flutter_reward/widgets/s_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatelessWidget {
  final String? hintText;
  final double? width;
  final double? height;

  const AppInput({super.key, this.hintText, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/input_bg.webp'),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: SInput(
              hintText: hintText ?? '',
            ),
          )
        ],
      ),
    );
  }
}
