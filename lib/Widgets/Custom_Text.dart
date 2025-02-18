

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({
  required  this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines

  });
  String text;
  double? fontSize;
  TextAlign? textAlign;
  Color? color;
  String? fontFamily;
  FontWeight? fontWeight;
  TextOverflow? overflow;
  int? maxLines;
  

  @override
  Widget build(BuildContext context) {
    return  Text(text,
    maxLines: maxLines,
    textAlign: textAlign,
     style: TextStyle(
    fontSize: fontSize,
     fontFamily:fontFamily,
     color: color,
     fontWeight: fontWeight,
     overflow: overflow,

     ),);
  }
}

