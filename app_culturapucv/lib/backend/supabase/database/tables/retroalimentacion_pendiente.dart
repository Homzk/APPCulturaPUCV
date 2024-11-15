import '../database.dart';

class RetroalimentacionPendienteTable
    extends SupabaseTable<RetroalimentacionPendienteRow> {
  @override
  String get tableName => 'retroalimentacion_pendiente';

  @override
  RetroalimentacionPendienteRow createRow(Map<String, dynamic> data) =>
      RetroalimentacionPendienteRow(data);
}

class RetroalimentacionPendienteRow extends SupabaseDataRow {
  RetroalimentacionPendienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RetroalimentacionPendienteTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get eventoId => getField<int>('evento_id');
  set eventoId(int? value) => setField<int>('evento_id', value);

  bool? get retroalimentacionCompletada =>
      getField<bool>('retroalimentacion_completada');
  set retroalimentacionCompletada(bool? value) =>
      setField<bool>('retroalimentacion_completada', value);
}
