import 'package:flutter/material.dart';
import 'package:spendig_app/widgets/spending_list_widget.dart';

import '../widgets/category_list_widget.dart';
import '../widgets/sliver_appbar_widget.dart';
import '../widgets/total_expenses_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: TabBarView(children: [
            CustomScrollView(
              slivers: [
                const SliverAppBarWidget(
                  title: "Spending App",
                ),
                const TotalExpensesWidget(),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  sliver: SliverToBoxAdapter(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.payment),
                      label: const Text("Tambah Pengeluaran"),
                    ),
                  ),
                ),
                const SpendingListWidget()
              ],
            ),
            const CustomScrollView(
              slivers: [
                SliverAppBarWidget(
                  title: "Spending App",
                ),
                CategoryListWidget()
              ],
            ),
            const CustomScrollView(
              slivers: [
                SliverAppBarWidget(
                  title: "Spending App",
                ),
              ],
            ),
          ])),
    );
  }
}
