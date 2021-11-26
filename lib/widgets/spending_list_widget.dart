import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/data.dart';
import '../bloc/spending/spending_bloc.dart';

class SpendingListWidget extends StatelessWidget {
  const SpendingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _numberFormat = NumberFormat.compactCurrency(
      decimalDigits: 2,
      symbol: "",
    );

    return BlocBuilder<SpendingBloc, SpendingState>(builder: (context, state) {
      if (state is SpendingLoadingState) {
        return const SliverPadding(
            padding: EdgeInsets.all(20.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ));
      }

      if (state is SpendingLoadedState) {
        if (state.spendingList.isEmpty) {
          return const SliverPadding(
            padding: EdgeInsets.all(20.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Text("Pengeluaran masih kosong."),
              ),
            ),
          );
        } else {
          return SliverPadding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final spending = state.spendingList[index];

                return Column(
                  children: [
                    ListTile(
                      title: Text(spending.label),
                      subtitle: Text(
                        getCategoryTypeString(spending.categoryType),
                        textAlign: TextAlign.justify,
                      ),
                      trailing:
                          Text("Rp ${_numberFormat.format(spending.total)}"),
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                );
              }, childCount: state.spendingList.length),
            ),
          );
        }
      }

      return const SliverPadding(
          padding: EdgeInsets.all(20.0),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Text("Something went wrong!"),
            ),
          ));
    });
  }
}
