import 'package:flutter/material.dart';
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
          const SizedBox(height: 35,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.17),
            child: const FutureListViewItems(),
          )
        ],
      ),
    );
  }
}

