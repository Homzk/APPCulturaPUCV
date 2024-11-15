import '../database.dart';

class UsuariosReservasTable extends SupabaseTable<UsuariosReservasRow> {
  @override
  String get tableName => 'usuarios_reservas';

  @override
  UsuariosReservasRow createRow(Map<String, dynamic> data) =>
      UsuariosReservasRow(data);
}

class UsuariosReservasRow extends SupabaseDataRow {
  UsuariosReservasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosReservasTable();

  String? get rut => getField<String>('rut');
  set rut(String? value) => setField<String>('rut', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get profesion => getField<String>('profesion');
  set profesion(String? value) => setField<String>('profesion', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  DateTime? get anioNacimiento => getField<DateTime>('anioNacimiento');
  set anioNacimiento(DateTime? value) =>
      setField<DateTime>('anioNacimiento', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  int? get numeroAsientos => getField<int>('numeroAsientos');
  set numeroAsientos(int? value) => setField<int>('numeroAsientos', value);

  bool? get asistencia => getField<bool>('asistencia');
  set asistencia(bool? value) => setField<bool>('asistencia', value);
}
