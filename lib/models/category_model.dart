import 'package:equatable/equatable.dart';
import 'package:spendig_app/data/data.dart';

class CategoryModel extends Equatable {
  final String id;
  final String label;
  final String description;
  final CategoryType type;

  const CategoryModel({
    required this.id,
    required this.label,
    required this.description,
    required this.type,
  });

  @override
  List<Object> get props => [id, label, description, type];
}
