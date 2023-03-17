
import 'package:bookly_app/core/extensions/media_query_extension.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/text_styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'features_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
      padding: const EdgeInsets.symmetric( horizontal : 30 , vertical: 20 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start , 
        children:  [
           const CustomAppBar(),
           const SizedBox(height: 25),
           SizedBox(
              height: context.getSize(context).height * 0.3 ,
             child:const FeaturesListView() 
           ),
      
           const SizedBox(height: 40),
           const Text('Best Seller', style: AppStyles.textStyle18 ),
           const SizedBox(height: 20 ),
           
        ],
      ),
    ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView() ,
        ),
      ],
    );
  }
}

















