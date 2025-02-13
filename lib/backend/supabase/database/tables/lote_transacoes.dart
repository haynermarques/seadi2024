import '../database.dart';

class LoteTransacoesTable extends SupabaseTable<LoteTransacoesRow> {
  @override
  String get tableName => 'lote_transacoes';

  @override
  LoteTransacoesRow createRow(Map<String, dynamic> data) =>
      LoteTransacoesRow(data);
}

class LoteTransacoesRow extends SupabaseDataRow {
  LoteTransacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LoteTransacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get loteId => getField<int>('lote_id');
  set loteId(int? value) => setField<int>('lote_id', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  String get tipoTransacao => getField<String>('tipo_transacao')!;
  set tipoTransacao(String value) => setField<String>('tipo_transacao', value);

  DateTime get dataTransacao => getField<DateTime>('data_transacao')!;
  set dataTransacao(DateTime value) =>
      setField<DateTime>('data_transacao', value);

  DateTime? get dataExpiracaoReserva =>
      getField<DateTime>('data_expiracao_reserva');
  set dataExpiracaoReserva(DateTime? value) =>
      setField<DateTime>('data_expiracao_reserva', value);
}
