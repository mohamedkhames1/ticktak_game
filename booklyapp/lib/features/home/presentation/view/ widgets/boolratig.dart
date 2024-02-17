import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utlis/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),),
        const SizedBox(width: 6.3,),
        Text('4.5',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text('(4583)',style: Styles.textStyle14.copyWith(color: Colors.grey),),
      ],
    );
  }
}
