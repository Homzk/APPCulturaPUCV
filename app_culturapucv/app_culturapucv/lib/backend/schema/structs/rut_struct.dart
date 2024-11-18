// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutStruct extends BaseStruct {
  RutStruct({
    String? rut,
  }) : _rut = rut;

  // "rut" field.
  String? _rut;
  String get rut => _rut ?? '';
  set rut(String? val) => _rut = val;

  bool hasRut() => _rut != null;

  static RutStruct fromMap(Map<String, dynamic> data) => RutStruct(
        rut: data['rut'] as String?,
      );

  static RutStruct? maybeFromMap(dynamic data) =>
      data is Map ? RutStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rut': _rut,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rut': serializeParam(
          _rut,
          ParamType.String,
        ),
      }.withoutNulls;

  static RutStruct fromSerializableMap(Map<String, dynamic> data) => RutStruct(
        rut: deserializeParam(
          data['rut'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RutStruct && rut == other.rut;
  }

  @override
  int get hashCode => const ListEquality().hash([rut]);
}

RutStruct createRutStruct({
  String? rut,
}) =>
    RutStruct(
      rut: rut,
    );
