


 import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, 
   this.backgroundColor = Colors.white ,  this.isBorderRadiusLeft = true, required this.textStyle });

  final String text ;
  final Color backgroundColor ;
  final bool isBorderRadiusLeft ;
  final TextStyle textStyle ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){

      } ,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: isBorderRadiusLeft ? const Radius.circular(15) : Radius.zero , 
             right: isBorderRadiusLeft ? Radius.zero : const Radius.circular(15) 
             ), 
          ) ,
        ) , 
    child: Text(text, style: textStyle  ) );
  }
}