




 import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

void showSnackBar ({ required context , required String errText ,
         
 }) {
  ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(errText , style: AppStyles.textStyle16 , ),
        duration: const Duration(seconds: 3 ),
        padding: const EdgeInsets.all(10) ,
        elevation: 0 ,
        backgroundColor: Colors.red ,
        clipBehavior: Clip.antiAliasWithSaveLayer ,
        ),
  );
 }