import 'package:bookly_app/core/extensions/media_query_extension.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/text_styles.dart';
import 'bottom_part_best_seller_list_view_item.dart';
import 'features_list_view_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.title,
   required this.subTitle, required this.imageUrl,
     required this.rating, required this.count});


  final String title ;
  final String subTitle ;
  final String imageUrl ;
  final double rating ;
  final double count ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RoutesNames.bookDetailsName);
      },
      child: Padding(
        padding: const EdgeInsets.only( bottom : 20.0),
        child: SizedBox(
          height: 150 ,
          child: Row(
              children: [
                 FeatureListViewItem(imageUrl: imageUrl),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    crossAxisAlignment: CrossAxisAlignment.start ,
                        
                    children:  [
                      SizedBox(
                        width: context.getSize(context).width * 0.5  ,
                        child:  Text(title , 
                        maxLines: 2 ,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.textStyle20),
                      ) ,
                      const SizedBox(height: 3),
                       Text(subTitle , style: AppStyles.textStyle14.copyWith(color: Colors.grey.withOpacity(1) ), ) ,
                      const SizedBox(height: 8) ,
                       BottomPartBestSellerListViewItem(
                        rating: rating ,
                        count: count ,
                      ),
                    ],
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}