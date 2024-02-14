import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets.dart';
import 'homeviewAppBar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const CustomAppbar(),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio:5/2,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: AssetsData.testImage,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}


