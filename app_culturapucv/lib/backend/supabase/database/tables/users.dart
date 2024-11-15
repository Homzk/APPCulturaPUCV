import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  String? get apellidos => getField<String>('apellidos');
  set apellidos(String? value) => setField<String>('apellidos', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get anioNacimiento => getField<DateTime>('anioNacimiento');
  set anioNacimiento(DateTime? value) =>
      setField<DateTime>('anioNacimiento', value);

  String? get region => getField<String>('region');
  set region(String? value) => setField<String>('region', value);

  String? get profesion => getField<String>('profesion');
  set profesion(String? value) => setField<String>('profesion', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get rut => getField<String>('rut');
  set rut(String? value) => setField<String>('rut', value);

  String? get nombres => getField<String>('nombres');
  set nombres(String? value) => setField<String>('nombres', value);

  bool? get isAdmin => getField<bool>('isAdmin');
  set isAdmin(bool? value) => setField<bool>('isAdmin', value);

  bool? get isMonitor => getField<bool>('isMonitor');
  set isMonitor(bool? value) => setField<bool>('isMonitor', value);

  bool? get isComplete => getField<bool>('isComplete');
  set isComplete(bool? value) => setField<bool>('isComplete', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);
}
