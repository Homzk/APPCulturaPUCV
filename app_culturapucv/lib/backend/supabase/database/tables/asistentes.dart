import '../database.dart';

class AsistentesTable extends SupabaseTable<AsistentesRow> {
  @override
  String get tableName => 'asistentes';

  @override
  AsistentesRow createRow(Map<String, dynamic> data) => AsistentesRow(data);
}

class AsistentesRow extends SupabaseDataRow {
  AsistentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AsistentesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fechaAsistencia => getField<DateTime>('fecha_asistencia')!;
  set fechaAsistencia(DateTime value) =>
      setField<DateTime>('fecha_asistencia', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  bool? get asistio => getField<bool>('asistio');
  set asistio(bool? value) => setField<bool>('asistio', value);
}
