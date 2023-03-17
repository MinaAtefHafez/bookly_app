import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/main/presentation/manager/featured_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/main/presentation/manager/featured_cubit/featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features_list_view_item.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return ListView.builder(
              itemCount: state.bookModel.items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  FeatureListViewItem(
                  imageUrl: state.bookModel.items[index].volumeInfo!.imageLinks!.smallThumbnail! 
              ));
        } else if (state is FeaturedBooksFailure) {
          return Container(
              alignment: Alignment.center,
              child: Text(
                state.errMessage,
                style: AppStyles.textStyle20,
              ));
        } else {
           return Container(
            alignment: Alignment.center ,
            child: const CircularProgressIndicator());
        }
      },
    );
  }
}
