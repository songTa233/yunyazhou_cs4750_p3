import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SInput extends StatelessWidget {
  const SInput({
    Key? key,
    this.keyboardType = TextInputType.text,
    this.hintText = "",
    this.controller,
    this.style,
    this.contentPadding,
    this.maxLines = 1,
    this.inputFormatter,
    this.focusNode,
    this.maxLength,
    this.autofocus = false,
    this.onChange
  }) : super(key: key);

  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController? controller;
  final TextStyle? style;
  final EdgeInsets? contentPadding;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatter;
  final FocusNode? focusNode;
  final bool autofocus;
  final Function? onChange;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatter,
      focusNode: focusNode,
      autofocus: autofocus,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
          contentPadding: contentPadding ?? const EdgeInsets.only(left: 0, bottom: 2),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.transparent,
          isDense: true,
          counterText: "",
      ),
      maxLines: maxLines,
      maxLength: maxLength,
      // cursorColor: AppColors.yellow_light,
      style: style ?? const TextStyle(color: Colors.deepOrangeAccent),
      onChanged: (String input){
        onChange?.call(input);
      },
    );
  }
}
