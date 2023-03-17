



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/text_styles.dart';

class RatingPartBookDetailsView extends StatelessWidget {
  const RatingPartBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar , color: Colors.amber , size: 18 , ),
                        const SizedBox(width: 8),
                        const Text('4.8' , style: AppStyles.textStyle16, ),
                        const SizedBox(width: 5),
                         Text('(23500)' , style: AppStyles.textStyle14.copyWith(color: Colors.grey.withOpacity(1) ), ) 
      ],
    ) ;
  }
}