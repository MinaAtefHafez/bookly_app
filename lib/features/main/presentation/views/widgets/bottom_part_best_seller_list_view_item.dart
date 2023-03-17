

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/text_styles.dart';

class BottomPartBestSellerListViewItem extends StatelessWidget {
  const BottomPartBestSellerListViewItem({super.key, required this.rating, required this.count});

  
  final double rating ;
  final double count ;

  @override
  Widget build(BuildContext context) {
    return Row(
                    
                    children:   [
                        Text('Free' , style: 
                        AppStyles.textStyle20.copyWith(fontWeight: FontWeight.bold )),
                        const Spacer(),
                        const Icon(FontAwesomeIcons.solidStar , color: Colors.amber , size: 18 , ),
                        const SizedBox(width: 8),
                              Text( '$rating' , style: AppStyles.textStyle16, ),
                        const SizedBox(width: 5),
                         Text('($count)' , style: AppStyles.textStyle14.copyWith(color: Colors.grey.withOpacity(1) ), ) 
                    ],
                  );
  }
}