




import 'package:bookly_app/core/extensions/media_query_extension.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          SizedBox(
            width: context.getSize(context).width * 0.18,
            child: const FittedBox(
              
              child: Text('BOOKLY'))),
              const Spacer(),
              IconButton(
              onPressed: (){
                GoRouter.of(context).push(RoutesNames.searchViewName);
              } , 
              icon: const Icon(FontAwesomeIcons.magnifyingGlass ,
               size: 22 ,
               ) ),    
      ],
    ) ;
  }
}