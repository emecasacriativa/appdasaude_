// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PharmacyStruct extends BaseStruct {
  PharmacyStruct({
    String? name,
    String? image,
    String? location,
  })  : _name = name,
        _image = image,
        _location = location;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  static PharmacyStruct fromMap(Map<String, dynamic> data) => PharmacyStruct(
        name: data['name'] as String?,
        image: data['image'] as String?,
        location: data['location'] as String?,
      );

  static PharmacyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PharmacyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'image': _image,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
      }.withoutNulls;

  static PharmacyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PharmacyStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PharmacyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PharmacyStruct &&
        name == other.name &&
        image == other.image &&
        location == other.location;
  }

  @override
  int get hashCode => const ListEquality().hash([name, image, location]);
}

PharmacyStruct createPharmacyStruct({
  String? name,
  String? image,
  String? location,
}) =>
    PharmacyStruct(
      name: name,
      image: image,
      location: location,
    );
