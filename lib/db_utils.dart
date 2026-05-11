import '../data/produtos.dart' as db;

List<Map<String, dynamic>> produtosTratados = db.produtos.map((produto) {
  produto['valor_venda'] = produto['valor_venda'].replaceAll(',', '.');

  produto['lucro'] =
      double.parse(produto['valor_venda']) -
      double.parse(produto['valor_compra']);
  return produto;
}).toList();


