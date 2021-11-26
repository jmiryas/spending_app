part of 'spending_bloc.dart';

abstract class SpendingEvent extends Equatable {
  const SpendingEvent();

  @override
  List<Object> get props => [];
}

class SpendingStartedEvent extends SpendingEvent {}
