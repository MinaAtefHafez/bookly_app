

import 'package:bookly_app/core/extensions/media_query_extension.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/main/presentation/views/widgets/features_list_view_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import 'cusom_button.dart';
import 'custom_book_details_app_bar.dart';
import 'rating_part_book_details_view.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal : 30.0),
      child: Column(
        children:  [
          const SizedBox(height: 15),
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 15 ),
          SizedBox(
            height: context.getSize(context).height * 0.3 ,
            child: const FeatureListViewItem(imageUrl: AppConstants.featuresUrlImageItem),
          ),
          const SizedBox(height: 30),
           Text('The Jungle Book' , 
          style: AppStyles.textStyle30.
          copyWith(fontWeight: FontWeight.bold )),
          const SizedBox(height: 7), 
          Text('Rudyard Kipling', 
          style: AppStyles.textStyle18.
          copyWith(color: Colors.grey.withOpacity(0.7),
           fontWeight: FontWeight.w500 , 
           fontStyle: FontStyle.italic
           )),
           const SizedBox(height: 16),
           const RatingPartBookDetailsView(),
           const SizedBox(height: 25),
           SizedBox(
            width: context.getSize(context).width * 0.75 ,
            
             child: Row(
              children:  [
                Expanded(child: CustomButton(text: '19.99 \$' ,
                 textStyle: AppStyles.textStyle18.copyWith(color: Colors.black ,
                  fontWeight: FontWeight.bold 
                  ))),
                Expanded(child: CustomButton(text: 'Free Preview', 
                backgroundColor: Colors.deepOrange , isBorderRadiusLeft: false , 
                textStyle: AppStyles.textStyle18.copyWith(color: Colors.white , fontWeight: FontWeight.w400  ) , )),
                
              ],
             ),
           ),
           const SizedBox(height: 50),
           Align(
            alignment: Alignment.centerLeft ,
            child: Text('You can also like' , style: AppStyles.textStyle14.copyWith(fontWeight: FontWeight.w600 ), )),
            const SizedBox(height: 20 ) ,
            const Expanded(child: SimilarBooksListView()),
            const SizedBox(height: 40),
        ],
      ),
    );
  }
}













