import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
   Color backgroundColor;
   final VoidCallback press;
   final Color textColor;
   double width,height;
   CustomButton({super.key, required this.text,
     this.backgroundColor = Colors.red,
     required this.press,
     this.textColor = Colors.white,
     this.width = 200,
     this.height = 50
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: textColor),)),
      ),
    );
  }
}
