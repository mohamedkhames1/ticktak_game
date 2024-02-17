import 'package:booklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'bestsellerlistviewitems.dart';
import 'futurbookslistview.dart';
import 'homeviewAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbar(),
            const FutureBooksListView(),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Best Seller ',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 20,
            ),
            const BestSellerListViewItems()
          ],
        ),
      ),
    );
  }
}

