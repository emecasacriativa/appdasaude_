// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewStruct extends BaseStruct {
  ReviewStruct({
    String? image,
    String? name,
    String? content,
  })  : _image = image,
        _name = name,
        _content = content;

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

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static ReviewStruct fromMap(Map<String, dynamic> data) => ReviewStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        content: data['content'] as String?,
      );

  static ReviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'content': _content,
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
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewStruct(
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
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewStruct &&
        image == other.image &&
        name == other.name &&
        content == other.content;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name, content]);
}

ReviewStruct createReviewStruct({
  String? image,
  String? name,
  String? content,
}) =>
    ReviewStruct(
      image: image,
      name: name,
      content: content,
    );
