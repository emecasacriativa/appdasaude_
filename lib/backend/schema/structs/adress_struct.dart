// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdressStruct extends BaseStruct {
  AdressStruct({
    String? fullName,
    String? country,
    String? streetAdress,
    String? city,
    int? postCode,
    String? email,
    int? mobileNumber,
    bool? isSelected,
  })  : _fullName = fullName,
        _country = country,
        _streetAdress = streetAdress,
        _city = city,
        _postCode = postCode,
        _email = email,
        _mobileNumber = mobileNumber,
        _isSelected = isSelected;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "streetAdress" field.
  String? _streetAdress;
  String get streetAdress => _streetAdress ?? '';
  set streetAdress(String? val) => _streetAdress = val;

  bool hasStreetAdress() => _streetAdress != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "postCode" field.
  int? _postCode;
  int get postCode => _postCode ?? 0;
  set postCode(int? val) => _postCode = val;

  void incrementPostCode(int amount) => postCode = postCode + amount;

  bool hasPostCode() => _postCode != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "mobileNumber" field.
  int? _mobileNumber;
  int get mobileNumber => _mobileNumber ?? 0;
  set mobileNumber(int? val) => _mobileNumber = val;

  void incrementMobileNumber(int amount) =>
      mobileNumber = mobileNumber + amount;

  bool hasMobileNumber() => _mobileNumber != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  static AdressStruct fromMap(Map<String, dynamic> data) => AdressStruct(
        fullName: data['fullName'] as String?,
        country: data['country'] as String?,
        streetAdress: data['streetAdress'] as String?,
        city: data['city'] as String?,
        postCode: castToType<int>(data['postCode']),
        email: data['email'] as String?,
        mobileNumber: castToType<int>(data['mobileNumber']),
        isSelected: data['isSelected'] as bool?,
      );

  static AdressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fullName': _fullName,
        'country': _country,
        'streetAdress': _streetAdress,
        'city': _city,
        'postCode': _postCode,
        'email': _email,
        'mobileNumber': _mobileNumber,
        'isSelected': _isSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'streetAdress': serializeParam(
          _streetAdress,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'postCode': serializeParam(
          _postCode,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'mobileNumber': serializeParam(
          _mobileNumber,
          ParamType.int,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AdressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdressStruct(
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        streetAdress: deserializeParam(
          data['streetAdress'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        postCode: deserializeParam(
          data['postCode'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobileNumber'],
          ParamType.int,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AdressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdressStruct &&
        fullName == other.fullName &&
        country == other.country &&
        streetAdress == other.streetAdress &&
        city == other.city &&
        postCode == other.postCode &&
        email == other.email &&
        mobileNumber == other.mobileNumber &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fullName,
        country,
        streetAdress,
        city,
        postCode,
        email,
        mobileNumber,
        isSelected
      ]);
}

AdressStruct createAdressStruct({
  String? fullName,
  String? country,
  String? streetAdress,
  String? city,
  int? postCode,
  String? email,
  int? mobileNumber,
  bool? isSelected,
}) =>
    AdressStruct(
      fullName: fullName,
      country: country,
      streetAdress: streetAdress,
      city: city,
      postCode: postCode,
      email: email,
      mobileNumber: mobileNumber,
      isSelected: isSelected,
    );
