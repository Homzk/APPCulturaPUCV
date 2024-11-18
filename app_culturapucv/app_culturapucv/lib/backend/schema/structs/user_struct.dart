// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    bool? isRegistration,
    String? rut,
    String? nombres,
    String? apellidos,
  })  : _isRegistration = isRegistration,
        _rut = rut,
        _nombres = nombres,
        _apellidos = apellidos;

  // "isRegistration" field.
  bool? _isRegistration;
  bool get isRegistration => _isRegistration ?? false;
  set isRegistration(bool? val) => _isRegistration = val;

  bool hasIsRegistration() => _isRegistration != null;

  // "rut" field.
  String? _rut;
  String get rut => _rut ?? '';
  set rut(String? val) => _rut = val;

  bool hasRut() => _rut != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  set nombres(String? val) => _nombres = val;

  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  set apellidos(String? val) => _apellidos = val;

  bool hasApellidos() => _apellidos != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        isRegistration: data['isRegistration'] as bool?,
        rut: data['rut'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'isRegistration': _isRegistration,
        'rut': _rut,
        'nombres': _nombres,
        'apellidos': _apellidos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isRegistration': serializeParam(
          _isRegistration,
          ParamType.bool,
        ),
        'rut': serializeParam(
          _rut,
          ParamType.String,
        ),
        'nombres': serializeParam(
          _nombres,
          ParamType.String,
        ),
        'apellidos': serializeParam(
          _apellidos,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        isRegistration: deserializeParam(
          data['isRegistration'],
          ParamType.bool,
          false,
        ),
        rut: deserializeParam(
          data['rut'],
          ParamType.String,
          false,
        ),
        nombres: deserializeParam(
          data['nombres'],
          ParamType.String,
          false,
        ),
        apellidos: deserializeParam(
          data['apellidos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        isRegistration == other.isRegistration &&
        rut == other.rut &&
        nombres == other.nombres &&
        apellidos == other.apellidos;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isRegistration, rut, nombres, apellidos]);
}

UserStruct createUserStruct({
  bool? isRegistration,
  String? rut,
  String? nombres,
  String? apellidos,
}) =>
    UserStruct(
      isRegistration: isRegistration,
      rut: rut,
      nombres: nombres,
      apellidos: apellidos,
    );
