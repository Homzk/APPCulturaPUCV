import '../database.dart';

class VistaAsistentesTable extends SupabaseTable<VistaAsistentesRow> {
  @override
  String get tableName => 'vista_asistentes';

  @override
  VistaAsistentesRow createRow(Map<String, dynamic> data) =>
      VistaAsistentesRow(data);
}

class VistaAsistentesRow extends SupabaseDataRow {
  VistaAsistentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaAsistentesTable();

  String? get rut => getField<String>('rut');
  set rut(String? value) => setField<String>('rut', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get profesion => getField<String>('profesion');
  set profesion(String? value) => setField<String>('profesion', value);

  DateTime? get anioNacimiento => getField<DateTime>('anioNacimiento');
  set anioNacimiento(DateTime? value) =>
      setField<DateTime>('anioNacimiento', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  bool? get reservo => getField<bool>('reservo');
  set reservo(bool? value) => setField<bool>('reservo', value);

  int? get numeroAsientos => getField<int>('numeroAsientos');
  set numeroAsientos(int? value) => setField<int>('numeroAsientos', value);
}
