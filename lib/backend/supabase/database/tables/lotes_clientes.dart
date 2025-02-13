import '../database.dart';

class LotesClientesTable extends SupabaseTable<LotesClientesRow> {
  @override
  String get tableName => 'lotes_clientes';

  @override
  LotesClientesRow createRow(Map<String, dynamic> data) =>
      LotesClientesRow(data);
}

class LotesClientesRow extends SupabaseDataRow {
  LotesClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LotesClientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
