import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  final String title;
  const SliverAppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        snap: false,
        pinned: true,
        // floating: true,
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.blue,
        bottom: const TabBar(
          tabs: [
            Tab(
              text: "Pengeluaran",
            ),
            Tab(
              text: "Kategori",
            ),
            Tab(
              text: "Tentang Kami",
            )
          ],
        ));
  }
}
