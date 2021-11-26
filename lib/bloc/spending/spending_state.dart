part of 'spending_bloc.dart';

abstract class SpendingState extends Equatable {
  const SpendingState();

  @override
  List<Object> get props => [];
}

class SpendingLoadingState extends SpendingState {}

class SpendingLoadedState extends SpendingState {
  final List<SpendingModel> spendingList;

  const SpendingLoadedState({
    this.spendingList = const [],
  });

  SpendingLoadedState copyWith({List<SpendingModel>? newSpendingList}) {
    return SpendingLoadedState(
      spendingList: newSpendingList ?? spendingList,
    );
  }

  @override
  List<Object> get props => [spendingList];
}

class SpendingErrorState extends SpendingState {}
