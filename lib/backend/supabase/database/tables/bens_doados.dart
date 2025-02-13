import '../database.dart';

class BensDoadosTable extends SupabaseTable<BensDoadosRow> {
  @override
  String get tableName => 'bens_doados';

  @override
  BensDoadosRow createRow(Map<String, dynamic> data) => BensDoadosRow(data);
}

class BensDoadosRow extends SupabaseDataRow {
  BensDoadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BensDoadosTable();

  String? get bens => getField<String>('bens');
  set bens(String? value) => setField<String>('bens', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get convenio => getField<String>('convenio');
  set convenio(String? value) => setField<String>('convenio', value);

  String? get entrega => getField<String>('entrega');
  set entrega(String? value) => setField<String>('entrega', value);

  String? get municipio => getField<String>('municipio');
  set municipio(String? value) => setField<String>('municipio', value);

  String? get patrimonio => getField<String>('patrimonio');
  set patrimonio(String? value) => setField<String>('patrimonio', value);

  String? get documento => getField<String>('documento');
  set documento(String? value) => setField<String>('documento', value);
}
