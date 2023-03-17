




import 'package:bookly_app/core/extensions/media_query_extension.dart';
import 'package:bookly_app/features/main/presentation/views/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;


  @override
  void initState() {
    super.initState();
    slideAnimate();
    goToHome();
    
  }

  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children:  [
           SizedBox(
            width: context.getSize(context).width * 0.58 ,
            child: const FittedBox(
              child:  Text( 'BOOKLY' , 
               style: TextStyle( fontWeight: FontWeight.bold ) , ))),
              AnimatedBuilder(
                animation: slidingAnimation ,
                builder: (context, child) => SlideTransition(
                  position: slidingAnimation ,
              
                  child: const Text('Read Free books')), 
              ),
        ],
      ),
    );
  }


  void slideAnimate() {
    animationController = AnimationController(
      vsync: this ,
      duration: const Duration(seconds: 2), 
       );
    
       slidingAnimation = Tween<Offset>(begin: const Offset(0, 4) , end: Offset.zero  )
       .animate(animationController);
       animationController.forward();
  }
   
  void goToHome () async {
     await Future.delayed(const Duration(seconds: 3 ) , () {
             GoRouter.of(context).pushReplacement(RoutesNames.homeName);         
      },);
  }
  
}