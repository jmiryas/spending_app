import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/data.dart';
import '../../models/spending_model.dart';

part 'spending_event.dart';
part 'spending_state.dart';

class SpendingBloc extends Bloc<SpendingEvent, SpendingState> {
  SpendingBloc() : super(SpendingLoadingState()) {
    on<SpendingStartedEvent>(_onSpendingStartedEvent);
  }

  void _onSpendingStartedEvent(
      SpendingStartedEvent event, Emitter<SpendingState> emit) async {
    emit(SpendingLoadingState());

    try {
      await Future.delayed(const Duration(seconds: 1)).whenComplete(
        () => emit(
          const SpendingLoadedState(spendingList: [
            SpendingModel(
                id: "id-01",
                label: "Test 01",
                categoryType: CategoryType.primer,
                total: 50000),
            SpendingModel(
                id: "id-02",
                label: "Test 02",
                categoryType: CategoryType.sekunder,
                total: 30000),
          ]),
        ),
      );
    } catch (error) {}
  }
}
