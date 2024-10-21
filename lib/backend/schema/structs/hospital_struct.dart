// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalStruct extends BaseStruct {
  HospitalStruct({
    String? image,
    String? name,
    String? location,
    String? rating,
  })  : _image = image,
        _name = name,
        _location = location,
        _rating = rating;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  set rating(String? val) => _rating = val;

  bool hasRating() => _rating != null;

  static HospitalStruct fromMap(Map<String, dynamic> data) => HospitalStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        location: data['location'] as String?,
        rating: data['rating'] as String?,
      );

  static HospitalStruct? maybeFromMap(dynamic data) =>
      data is Map ? HospitalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'location': _location,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.String,
        ),
      }.withoutNulls;

  static HospitalStruct fromSerializableMap(Map<String, dynamic> data) =>
      HospitalStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HospitalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HospitalStruct &&
        image == other.image &&
        name == other.name &&
        location == other.location &&
        rating == other.rating;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, name, location, rating]);
}

HospitalStruct createHospitalStruct({
  String? image,
  String? name,
  String? location,
  String? rating,
}) =>
    HospitalStruct(
      image: image,
      name: name,
      location: location,
      rating: rating,
    );
