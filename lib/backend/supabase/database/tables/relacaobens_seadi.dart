import '../database.dart';

class RelacaobensSeadiTable extends SupabaseTable<RelacaobensSeadiRow> {
  @override
  String get tableName => 'relacaobens_seadi';

  @override
  RelacaobensSeadiRow createRow(Map<String, dynamic> data) =>
      RelacaobensSeadiRow(data);
}

class RelacaobensSeadiRow extends SupabaseDataRow {
  RelacaobensSeadiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RelacaobensSeadiTable();

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get patrimonio => getField<String>('patrimonio');
  set patrimonio(String? value) => setField<String>('patrimonio', value);

  int? get tombamento => getField<int>('tombamento');
  set tombamento(int? value) => setField<int>('tombamento', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get convenio => getField<String>('convenio');
  set convenio(String? value) => setField<String>('convenio', value);

  String? get entrega => getField<String>('entrega');
  set entrega(String? value) => setField<String>('entrega', value);

  String? get municipio => getField<String>('municipio');
  set municipio(String? value) => setField<String>('municipio', value);
}
