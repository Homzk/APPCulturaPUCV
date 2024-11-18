import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  bool? get terminado => getField<bool>('terminado');
  set terminado(bool? value) => setField<bool>('terminado', value);

  String? get imagen => getField<String>('imagen');
  set imagen(String? value) => setField<String>('imagen', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  int? get numeroButacas => getField<int>('numeroButacas');
  set numeroButacas(int? value) => setField<int>('numeroButacas', value);

  String? get ciudad => getField<String>('ciudad');
  set ciudad(String? value) => setField<String>('ciudad', value);

  bool? get retroalimentacionEnviada =>
      getField<bool>('retroalimentacion_enviada');
  set retroalimentacionEnviada(bool? value) =>
      setField<bool>('retroalimentacion_enviada', value);
}
