import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/data.dart';
import '../../models/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryLoadingState()) {
    on<CategoryStartedEvent>(_onCategoryStartedEvent);
  }

  void _onCategoryStartedEvent(
      CategoryStartedEvent event, Emitter<CategoryState> emit) async {
    emit(CategoryLoadingState());

    try {
      await Future.delayed(const Duration(seconds: 0)).whenComplete(
        () => emit(
          CategoryLoadedState(categories: categoryList),
        ),
      );
    } catch (error) {}
  }
}
