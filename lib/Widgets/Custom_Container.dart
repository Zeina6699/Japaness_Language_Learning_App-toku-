

import 'package:flutter/material.dart';
import 'package:toku/Widgets/Custom_Text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
   required this.color,
   required this.text,
   this.onTap,
    super.key,
  });
 final Color color;
 final String text;
final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70, width:double.infinity, color:color, child: CustomText(text:text,color: Colors.white,fontSize:18)),
    );
  }
}