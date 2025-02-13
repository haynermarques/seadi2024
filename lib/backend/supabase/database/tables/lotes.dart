import '../database.dart';

class LotesTable extends SupabaseTable<LotesRow> {
  @override
  String get tableName => 'lotes';

  @override
  LotesRow createRow(Map<String, dynamic> data) => LotesRow(data);
}

class LotesRow extends SupabaseDataRow {
  LotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LotesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get quadra => getField<String>('quadra')!;
  set quadra(String value) => setField<String>('quadra', value);

  String get numeroLote => getField<String>('numero_lote')!;
  set numeroLote(String value) => setField<String>('numero_lote', value);

  int get disponibilidade => getField<int>('disponibilidade')!;
  set disponibilidade(int value) => setField<int>('disponibilidade', value);

  double get metragem => getField<double>('metragem')!;
  set metragem(double value) => setField<double>('metragem', value);

  double get valor => getField<double>('valor')!;
  set valor(double value) => setField<double>('valor', value);

  double get latitude => getField<double>('latitude')!;
  set latitude(double value) => setField<double>('latitude', value);

  double get longitude => getField<double>('longitude')!;
  set longitude(double value) => setField<double>('longitude', value);

  String get rua => getField<String>('rua')!;
  set rua(String value) => setField<String>('rua', value);

  DateTime? get dataReservadoAte => getField<DateTime>('data_reservado_ate');
  set dataReservadoAte(DateTime? value) =>
      setField<DateTime>('data_reservado_ate', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  DateTime get dataAtualizacao => getField<DateTime>('data_atualizacao')!;
  set dataAtualizacao(DateTime value) =>
      setField<DateTime>('data_atualizacao', value);
}
