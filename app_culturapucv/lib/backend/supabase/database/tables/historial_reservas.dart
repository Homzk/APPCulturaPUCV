import '../database.dart';

class HistorialReservasTable extends SupabaseTable<HistorialReservasRow> {
  @override
  String get tableName => 'historial_reservas';

  @override
  HistorialReservasRow createRow(Map<String, dynamic> data) =>
      HistorialReservasRow(data);
}

class HistorialReservasRow extends SupabaseDataRow {
  HistorialReservasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistorialReservasTable();

  int? get reservaId => getField<int>('reserva_id');
  set reservaId(int? value) => setField<int>('reserva_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  String? get nombreEvento => getField<String>('nombre_evento');
  set nombreEvento(String? value) => setField<String>('nombre_evento', value);

  String? get genero => getField<String>('genero');
  set genero(String? value) => setField<String>('genero', value);

  String? get ubicacion => getField<String>('ubicacion');
  set ubicacion(String? value) => setField<String>('ubicacion', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get imagen => getField<String>('imagen');
  set imagen(String? value) => setField<String>('imagen', value);

  DateTime? get fechaReserva => getField<DateTime>('fechaReserva');
  set fechaReserva(DateTime? value) =>
      setField<DateTime>('fechaReserva', value);

  int? get numeroAsientos => getField<int>('numeroAsientos');
  set numeroAsientos(int? value) => setField<int>('numeroAsientos', value);
}
