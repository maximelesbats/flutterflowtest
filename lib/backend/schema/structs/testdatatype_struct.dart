// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestdatatypeStruct extends BaseStruct {
  TestdatatypeStruct({
    TestdatatypeStruct? phototest,
  }) : _phototest = phototest;

  // "Phototest" field.
  TestdatatypeStruct? _phototest;
  TestdatatypeStruct get phototest => _phototest ?? TestdatatypeStruct();
  set phototest(TestdatatypeStruct? val) => _phototest = val;
  void updatePhototest(Function(TestdatatypeStruct) updateFn) =>
      updateFn(_phototest ??= TestdatatypeStruct());
  bool hasPhototest() => _phototest != null;

  static TestdatatypeStruct fromMap(Map<String, dynamic> data) =>
      TestdatatypeStruct(
        phototest: TestdatatypeStruct.maybeFromMap(data['Phototest']),
      );

  static TestdatatypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TestdatatypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Phototest': _phototest?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Phototest': serializeParam(
          _phototest,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TestdatatypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestdatatypeStruct(
        phototest: deserializeStructParam(
          data['Phototest'],
          ParamType.DataStruct,
          false,
          structBuilder: TestdatatypeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TestdatatypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestdatatypeStruct && phototest == other.phototest;
  }

  @override
  int get hashCode => const ListEquality().hash([phototest]);
}

TestdatatypeStruct createTestdatatypeStruct({
  TestdatatypeStruct? phototest,
}) =>
    TestdatatypeStruct(
      phototest: phototest ?? TestdatatypeStruct(),
    );
