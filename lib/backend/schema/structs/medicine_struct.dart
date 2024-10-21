// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicineStruct extends BaseStruct {
  MedicineStruct({
    String? name,
    String? secondary,
    String? image,
    double? price,
  })  : _name = name,
        _secondary = secondary,
        _image = image,
        _price = price;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "secondary" field.
  String? _secondary;
  String get secondary => _secondary ?? '';
  set secondary(String? val) => _secondary = val;

  bool hasSecondary() => _secondary != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static MedicineStruct fromMap(Map<String, dynamic> data) => MedicineStruct(
        name: data['name'] as String?,
        secondary: data['secondary'] as String?,
        image: data['image'] as String?,
        price: castToType<double>(data['price']),
      );

  static MedicineStruct? maybeFromMap(dynamic data) =>
      data is Map ? MedicineStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'secondary': _secondary,
        'image': _image,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'secondary': serializeParam(
          _secondary,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static MedicineStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicineStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        secondary: deserializeParam(
          data['secondary'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MedicineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicineStruct &&
        name == other.name &&
        secondary == other.secondary &&
        image == other.image &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, secondary, image, price]);
}

MedicineStruct createMedicineStruct({
  String? name,
  String? secondary,
  String? image,
  double? price,
}) =>
    MedicineStruct(
      name: name,
      secondary: secondary,
      image: image,
      price: price,
    );
