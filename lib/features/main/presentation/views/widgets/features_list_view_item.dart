import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, required this.imageUrl});
  
  final String imageUrl ;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( right: 7),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15) ,
          child: CachedNetworkImage(
            imageUrl: imageUrl ,
          placeholder: (context, url) => Container(
            alignment: Alignment.center ,
            child: const CircularProgressIndicator()) ,
           errorWidget: (context, url, error) => const Text('No image exist' ,
           style: AppStyles.textStyle16 ,
           ),
           fit: BoxFit.cover ,
          )),
      ),
    );
  }
}
