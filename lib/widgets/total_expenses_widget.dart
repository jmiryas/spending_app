import 'package:flutter/material.dart';

class TotalExpensesWidget extends StatelessWidget {
  const TotalExpensesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          width: double.infinity,
          height: height * 0.2,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Expanded(
                      child: Text(
                    "100K",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: Text(
                    "Total Pengeluaran November 2021",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
