import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/category/category_bloc.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      if (state is CategoryLoadingState) {
        return const SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      if (state is CategoryLoadedState) {
        if (state.categories.isEmpty) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text("Category is empty."),
            ),
          );
        } else {
          return SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final category = state.categories[index];

                return Column(
                  children: [
                    ListTile(
                      title: Text(category.label),
                      subtitle: Text(
                        category.description,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                );
              }, childCount: 3),
            ),
          );
        }
      }

      return const SliverToBoxAdapter(
        child: Center(
          child: Text("Something went wrong!"),
        ),
      );
    });
  }
}
