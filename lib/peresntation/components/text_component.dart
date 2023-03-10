// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextComponent extends StatelessWidget {
  String text;
  dynamic colorText;
  dynamic isBold;
  dynamic fontSize;
  dynamic fontFamily;
  TextDecoration? decoration;

  TextComponent({this.colorText,this.decoration,this.fontFamily, this.isBold,  this.fontSize, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.rtl,
        style: TextStyle(
        fontFamily: fontFamily,
          decoration: decoration ,
          color: colorText ?? Colors.indigo.shade500,
          fontSize: fontSize  ?? 25.sp,
          fontWeight: isBold == true ? FontWeight.bold : null),
    );
  }
}
