import 'package:uuid/uuid.dart';

import '../models/category_model.dart';

const uuid = Uuid();

enum CategoryType {
  primer,
  sekunder,
  tersier,
}

String getCategoryTypeString(CategoryType type) {
  if (type == CategoryType.primer) {
    return "Primer";
  } else if (type == CategoryType.sekunder) {
    return "Sekunder";
  } else {
    return "Tersier";
  }
}

final List<CategoryModel> categoryList = [
  CategoryModel(
    id: uuid.v4(),
    label: "Primer",
    description:
        "Kebutuhan pokok. Meliputi sandang, pangan, rumah, pendidikan dan sebagainya.",
    type: CategoryType.primer,
  ),
  CategoryModel(
    id: uuid.v4(),
    label: "Sekunder",
    description: "Kebutuhan tambahan. Seperti hiburan, wisata dan sebagainya.",
    type: CategoryType.sekunder,
  ),
  CategoryModel(
    id: uuid.v4(),
    label: "Tersier",
    description:
        "Kebutuhan untuk kesenangan pribadi. Seperti perhiasan dan berbagai barang mewah.",
    type: CategoryType.tersier,
  ),
];
