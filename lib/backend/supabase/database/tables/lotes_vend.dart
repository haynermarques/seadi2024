import '../database.dart';

class LotesVendTable extends SupabaseTable<LotesVendRow> {
  @override
  String get tableName => 'lotes_vend';

  @override
  LotesVendRow createRow(Map<String, dynamic> data) => LotesVendRow(data);
}

class LotesVendRow extends SupabaseDataRow {
  LotesVendRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LotesVendTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
