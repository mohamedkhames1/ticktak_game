import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utlis/styles.dart';
import '../customlistviewitems.dart';
import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.2020),
            child: const FutureListViewItems(),
          ),
          const SizedBox(height: 30,),
          Text('The Jungle Book',style: Styles.textStyle30,),
          Opacity(opacity: .7,
          child: Text('Rudyard Kipling',style: Styles.textStyle20,)),
        ],
      ),
    );
  }
}

