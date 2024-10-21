// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosticsItemStruct extends BaseStruct {
  DiagnosticsItemStruct({
    String? image,
    Color? color,
    String? name,
    String? description,
    String? price,
  })  : _image = image,
        _color = color,
        _name = name,
        _description = description,
        _price = price;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static DiagnosticsItemStruct fromMap(Map<String, dynamic> data) =>
      DiagnosticsItemStruct(
        image: data['image'] as String?,
        color: getSchemaColor(data['color']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        price: data['price'] as String?,
      );

  static DiagnosticsItemStruct? maybeFromMap(dynamic data) => data is Map
      ? DiagnosticsItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'color': _color,
        'name': _name,
        'description': _description,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiagnosticsItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiagnosticsItemStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiagnosticsItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiagnosticsItemStruct &&
        image == other.image &&
        color == other.color &&
        name == other.name &&
        description == other.description &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, color, name, description, price]);
}

DiagnosticsItemStruct createDiagnosticsItemStruct({
  String? image,
  Color? color,
  String? name,
  String? description,
  String? price,
}) =>
    DiagnosticsItemStruct(
      image: image,
      color: color,
      name: name,
      description: description,
      price: price,
    );
