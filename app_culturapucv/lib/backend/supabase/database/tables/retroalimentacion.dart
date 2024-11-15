import '../database.dart';

class RetroalimentacionTable extends SupabaseTable<RetroalimentacionRow> {
  @override
  String get tableName => 'retroalimentacion';

  @override
  RetroalimentacionRow createRow(Map<String, dynamic> data) =>
      RetroalimentacionRow(data);
}

class RetroalimentacionRow extends SupabaseDataRow {
  RetroalimentacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RetroalimentacionTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get calificacion => getField<int>('calificacion');
  set calificacion(int? value) => setField<int>('calificacion', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);
}
