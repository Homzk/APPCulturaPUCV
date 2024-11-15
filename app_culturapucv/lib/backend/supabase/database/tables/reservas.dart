import '../database.dart';

class ReservasTable extends SupabaseTable<ReservasRow> {
  @override
  String get tableName => 'reservas';

  @override
  ReservasRow createRow(Map<String, dynamic> data) => ReservasRow(data);
}

class ReservasRow extends SupabaseDataRow {
  ReservasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReservasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  DateTime? get fechaReserva => getField<DateTime>('fechaReserva');
  set fechaReserva(DateTime? value) =>
      setField<DateTime>('fechaReserva', value);

  int? get numeroAsientos => getField<int>('numeroAsientos');
  set numeroAsientos(int? value) => setField<int>('numeroAsientos', value);

  bool? get asistencia => getField<bool>('asistencia');
  set asistencia(bool? value) => setField<bool>('asistencia', value);
}
