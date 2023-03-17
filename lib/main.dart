import 'package:bookly_app/core/colors/app_colors.dart';
import 'package:bookly_app/core/service_locator/service_locator.dart';
import 'package:bookly_app/features/main/presentation/manager/featured_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/app_router.dart';
import 'features/main/presentation/manager/newest_cubit/newest_cubit.dart';


void main() {

  ServiceLocator().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestCubit(getIt())..fetchNewestBooks()),        
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.mainColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
