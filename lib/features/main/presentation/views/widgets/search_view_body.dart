

import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: const [
              CustomSearchTextField(),
              SizedBox(height: 15),
              Text('Search Result' , style: AppStyles.textStyle18) ,
              SizedBox(height: 30 ),
              Expanded(child: CustomSearchResultListView()),
        ],
        ),
    ) ;
  }
}



 class CustomSearchResultListView extends StatelessWidget {
  const CustomSearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10 ,
      itemBuilder: (context, index) =>  Text('') );
  }
}



