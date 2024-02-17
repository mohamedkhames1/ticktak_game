import 'package:booklyapp/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utlis/assets.dart';
import 'customlistviewitems.dart';
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

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          const FutureListViewItems(),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of fire ',
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),),
            ],
          )
        ],
      ),
    );
  }
}
