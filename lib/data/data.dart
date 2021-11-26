import 'package:uuid/uuid.dart';

import '../models/category_model.dart';

const uuid = Uuid();

enum CategoryType {
  primer,
  sekunder,
  tersier,
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
