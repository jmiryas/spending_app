import 'package:flutter/material.dart';

import '../widgets/category_list_widget.dart';
import '../widgets/sliver_appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const DefaultTabController(
          length: 3,
          child: TabBarView(children: [
            CustomScrollView(
              slivers: [
                SliverAppBarWidget(
                  title: "Spending App",
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverAppBarWidget(
                  title: "Spending App",
                ),
                CategoryListWidget()
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverAppBarWidget(
                  title: "Spending App",
                ),
              ],
            ),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
