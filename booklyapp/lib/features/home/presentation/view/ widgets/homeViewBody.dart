import 'package:flutter/material.dart';
import 'customlistviewitems.dart';
import 'futurbookslistview.dart';
import 'homeviewAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          FutureBooksListView(),
        ],
      ),
    );
  }
}

