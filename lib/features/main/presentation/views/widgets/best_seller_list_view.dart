import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/main/presentation/manager/newest_cubit/newest_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/text_styles.dart';
import '../../manager/newest_cubit/newest_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestCubit, NewestState>(builder: (context, state) {
      if (state is NewestSuccess) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.items.length,
              itemBuilder: (context, index) => BestSellerListViewItem(
                    title: state.books.items[index].volumeInfo!.title!,
                    subTitle: state.books.items[index].volumeInfo!.authors[0],
                    imageUrl: state.books.items[index].volumeInfo!.imageLinks!.thumbnail! ,
                    rating: 4.4,
                    count: 19.5,
                  )),
        );
      } else if (state is NewestFailure) {
        return Container(
            alignment: Alignment.center,
            child: Text(
              state.errMessage,
              style: AppStyles.textStyle20,
            ));
      } else {
        return Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(),
        );
      }
    });
  }
}
