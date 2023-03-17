



import 'package:flutter/widgets.dart';

extension Mq on BuildContext {
   Size getSize (context) => MediaQuery.of(context).size ;
   Orientation getOrientation (context) => MediaQuery.of(context).orientation ;
}