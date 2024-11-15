// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsistenciaStruct extends BaseStruct {
  AsistenciaStruct({
    bool? asistencia,
  }) : _asistencia = asistencia;

  // "asistencia" field.
  bool? _asistencia;
  bool get asistencia => _asistencia ?? false;
  set asistencia(bool? val) => _asistencia = val;

  bool hasAsistencia() => _asistencia != null;

  static AsistenciaStruct fromMap(Map<String, dynamic> data) =>
      AsistenciaStruct(
        asistencia: data['asistencia'] as bool?,
      );

  static AsistenciaStruct? maybeFromMap(dynamic data) => data is Map
      ? AsistenciaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'asistencia': _asistencia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'asistencia': serializeParam(
          _asistencia,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AsistenciaStruct fromSerializableMap(Map<String, dynamic> data) =>
      AsistenciaStruct(
        asistencia: deserializeParam(
          data['asistencia'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AsistenciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AsistenciaStruct && asistencia == other.asistencia;
  }

  @override
  int get hashCode => const ListEquality().hash([asistencia]);
}

AsistenciaStruct createAsistenciaStruct({
  bool? asistencia,
}) =>
    AsistenciaStruct(
      asistencia: asistencia,
    );
