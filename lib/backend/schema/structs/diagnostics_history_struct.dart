// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiagnosticsHistoryStruct extends BaseStruct {
  DiagnosticsHistoryStruct({
    String? image,
    String? hospitalName,
    String? doctorName,
    String? diagnosticsType,
  })  : _image = image,
        _hospitalName = hospitalName,
        _doctorName = doctorName,
        _diagnosticsType = diagnosticsType;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "hospitalName" field.
  String? _hospitalName;
  String get hospitalName => _hospitalName ?? '';
  set hospitalName(String? val) => _hospitalName = val;

  bool hasHospitalName() => _hospitalName != null;

  // "doctorName" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  set doctorName(String? val) => _doctorName = val;

  bool hasDoctorName() => _doctorName != null;

  // "diagnosticsType" field.
  String? _diagnosticsType;
  String get diagnosticsType => _diagnosticsType ?? '';
  set diagnosticsType(String? val) => _diagnosticsType = val;

  bool hasDiagnosticsType() => _diagnosticsType != null;

  static DiagnosticsHistoryStruct fromMap(Map<String, dynamic> data) =>
      DiagnosticsHistoryStruct(
        image: data['image'] as String?,
        hospitalName: data['hospitalName'] as String?,
        doctorName: data['doctorName'] as String?,
        diagnosticsType: data['diagnosticsType'] as String?,
      );

  static DiagnosticsHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? DiagnosticsHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'hospitalName': _hospitalName,
        'doctorName': _doctorName,
        'diagnosticsType': _diagnosticsType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'hospitalName': serializeParam(
          _hospitalName,
          ParamType.String,
        ),
        'doctorName': serializeParam(
          _doctorName,
          ParamType.String,
        ),
        'diagnosticsType': serializeParam(
          _diagnosticsType,
          ParamType.String,
        ),
      }.withoutNulls;

  static DiagnosticsHistoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DiagnosticsHistoryStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        hospitalName: deserializeParam(
          data['hospitalName'],
          ParamType.String,
          false,
        ),
        doctorName: deserializeParam(
          data['doctorName'],
          ParamType.String,
          false,
        ),
        diagnosticsType: deserializeParam(
          data['diagnosticsType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DiagnosticsHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiagnosticsHistoryStruct &&
        image == other.image &&
        hospitalName == other.hospitalName &&
        doctorName == other.doctorName &&
        diagnosticsType == other.diagnosticsType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([image, hospitalName, doctorName, diagnosticsType]);
}

DiagnosticsHistoryStruct createDiagnosticsHistoryStruct({
  String? image,
  String? hospitalName,
  String? doctorName,
  String? diagnosticsType,
}) =>
    DiagnosticsHistoryStruct(
      image: image,
      hospitalName: hospitalName,
      doctorName: doctorName,
      diagnosticsType: diagnosticsType,
    );
