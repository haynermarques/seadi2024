import '../database.dart';

class ContratosSeadiTable extends SupabaseTable<ContratosSeadiRow> {
  @override
  String get tableName => 'contratos_seadi';

  @override
  ContratosSeadiRow createRow(Map<String, dynamic> data) =>
      ContratosSeadiRow(data);
}

class ContratosSeadiRow extends SupabaseDataRow {
  ContratosSeadiRow(super.data);

  @override
  SupabaseTable get table => ContratosSeadiTable();

  String? get processo => getField<String>('processo');
  set processo(String? value) => setField<String>('processo', value);

  String? get contrato => getField<String>('contrato');
  set contrato(String? value) => setField<String>('contrato', value);

  String? get objeto => getField<String>('objeto');
  set objeto(String? value) => setField<String>('objeto', value);

  String? get vigencia => getField<String>('vigencia');
  set vigencia(String? value) => setField<String>('vigencia', value);

  double? get saldo => getField<double>('saldo');
  set saldo(double? value) => setField<double>('saldo', value);

  String? get empresas => getField<String>('empresas');
  set empresas(String? value) => setField<String>('empresas', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);

  String? get gestor2 => getField<String>('gestor2');
  set gestor2(String? value) => setField<String>('gestor2', value);

  String? get gestor3 => getField<String>('gestor3');
  set gestor3(String? value) => setField<String>('gestor3', value);

  String? get fiscal => getField<String>('fiscal');
  set fiscal(String? value) => setField<String>('fiscal', value);

  String? get fiscal2 => getField<String>('fiscal2');
  set fiscal2(String? value) => setField<String>('fiscal2', value);

  String? get fiscal3 => getField<String>('fiscal3');
  set fiscal3(String? value) => setField<String>('fiscal3', value);

  String? get fase => getField<String>('fase');
  set fase(String? value) => setField<String>('fase', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
