import 'package:equatable/equatable.dart';

import 'package:spendig_app/data/data.dart';

class SpendingModel extends Equatable {
  final String id;
  final String label;
  final CategoryType categoryType;
  final double total;

  const SpendingModel({
    required this.id,
    required this.label,
    required this.categoryType,
    required this.total,
  });

  @override
  List<Object> get props => [id, label, categoryType, total];
}
