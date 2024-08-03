import '../database.dart';

class VwContratostotalTable extends SupabaseTable<VwContratostotalRow> {
  @override
  String get tableName => 'vw_contratostotal';

  @override
  VwContratostotalRow createRow(Map<String, dynamic> data) =>
      VwContratostotalRow(data);
}

class VwContratostotalRow extends SupabaseDataRow {
  VwContratostotalRow(super.data);

  @override
  SupabaseTable get table => VwContratostotalTable();

  int? get totalRegistros => getField<int>('total_registros');
  set totalRegistros(int? value) => setField<int>('total_registros', value);

  double? get totalSaldo => getField<double>('total_saldo');
  set totalSaldo(double? value) => setField<double>('total_saldo', value);

  int? get totalProcessoContinuo => getField<int>('total_processo_continuo');
  set totalProcessoContinuo(int? value) =>
      setField<int>('total_processo_continuo', value);

  int? get totalFormalizacao => getField<int>('total_formalizacao');
  set totalFormalizacao(int? value) =>
      setField<int>('total_formalizacao', value);

  int? get totalArquivado => getField<int>('total_arquivado');
  set totalArquivado(int? value) => setField<int>('total_arquivado', value);

  int? get totalExecucao => getField<int>('total_execucao');
  set totalExecucao(int? value) => setField<int>('total_execucao', value);
}
