part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryLoadingState extends CategoryState {}

class CategoryLoadedState extends CategoryState {
  final List<CategoryModel> categories;

  const CategoryLoadedState({
    required this.categories,
  });

  @override
  List<Object> get props => [categories];
}

class CategoryErrorState extends CategoryState {}
