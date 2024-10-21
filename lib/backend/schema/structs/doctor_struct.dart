// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorStruct extends BaseStruct {
  DoctorStruct({
    String? image,
    String? name,
    String? specialization,
    String? location,
    String? rating,
    String? exp,
    String? workingHospital,
  })  : _image = image,
        _name = name,
        _specialization = specialization,
        _location = location,
        _rating = rating,
        _exp = exp,
        _workingHospital = workingHospital;

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

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  set specialization(String? val) => _specialization = val;

  bool hasSpecialization() => _specialization != null;

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

  // "exp" field.
  String? _exp;
  String get exp => _exp ?? '';
  set exp(String? val) => _exp = val;

  bool hasExp() => _exp != null;

  // "workingHospital" field.
  String? _workingHospital;
  String get workingHospital => _workingHospital ?? '';
  set workingHospital(String? val) => _workingHospital = val;

  bool hasWorkingHospital() => _workingHospital != null;

  static DoctorStruct fromMap(Map<String, dynamic> data) => DoctorStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        specialization: data['specialization'] as String?,
        location: data['location'] as String?,
        rating: data['rating'] as String?,
        exp: data['exp'] as String?,
        workingHospital: data['workingHospital'] as String?,
      );

  static DoctorStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoctorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'specialization': _specialization,
        'location': _location,
        'rating': _rating,
        'exp': _exp,
        'workingHospital': _workingHospital,
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
        'specialization': serializeParam(
          _specialization,
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
        'exp': serializeParam(
          _exp,
          ParamType.String,
        ),
        'workingHospital': serializeParam(
          _workingHospital,
          ParamType.String,
        ),
      }.withoutNulls;

  static DoctorStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoctorStruct(
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
        specialization: deserializeParam(
          data['specialization'],
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
        exp: deserializeParam(
          data['exp'],
          ParamType.String,
          false,
        ),
        workingHospital: deserializeParam(
          data['workingHospital'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DoctorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DoctorStruct &&
        image == other.image &&
        name == other.name &&
        specialization == other.specialization &&
        location == other.location &&
        rating == other.rating &&
        exp == other.exp &&
        workingHospital == other.workingHospital;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [image, name, specialization, location, rating, exp, workingHospital]);
}

DoctorStruct createDoctorStruct({
  String? image,
  String? name,
  String? specialization,
  String? location,
  String? rating,
  String? exp,
  String? workingHospital,
}) =>
    DoctorStruct(
      image: image,
      name: name,
      specialization: specialization,
      location: location,
      rating: rating,
      exp: exp,
      workingHospital: workingHospital,
    );
