




import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import 'features_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              
              itemCount: 10 ,
              scrollDirection: Axis.horizontal ,
              itemBuilder: (context, index) => 
             const FeatureListViewItem(imageUrl: AppConstants.featuresUrlImageItem,)
       
    );
  }
}