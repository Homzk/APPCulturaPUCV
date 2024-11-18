import '../database.dart';

class AsientosReservadosTable extends SupabaseTable<AsientosReservadosRow> {
  @override
  String get tableName => 'asientosReservados';

  @override
  AsientosReservadosRow createRow(Map<String, dynamic> data) =>
      AsientosReservadosRow(data);
}

class AsientosReservadosRow extends SupabaseDataRow {
  AsientosReservadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AsientosReservadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get reservaId => getField<int>('reserva_id');
  set reservaId(int? value) => setField<int>('reserva_id', value);

  int? get asientoNumero => getField<int>('asientoNumero');
  set asientoNumero(int? value) => setField<int>('asientoNumero', value);
}
