import '../data/produtos.dart' as db;

List<Map<String, dynamic>> produtosTratados = db.produtos.map((produto) {
  produto['valor_venda'] = produto['valor_venda'].replaceAll(',', '.');
  produto['valor_venda'] = double.parse(produto['valor_venda']);
  produto['valor_compra'] = double.parse(produto['valor_compra']);
  produto['lucro'] = produto['valor_venda'] - produto['valor_compra'];

  return produto;
}).toList();

void printProducts() {
  final produtos = produtosTratados.map(
    (produto) =>
        'ID: ${produto['id']} | PRODUTO: ${produto['produto']} | LUCRO POR VENDA: R\$ ${(produto['lucro'] as double).toStringAsFixed(2).replaceAll('.', ',')}',
  );
  for (var produto in produtos) {
    print(produto);
  }
}

void printMedias({required String valor}) {
  print(
    'Media valor $valor R\$ ${mediaCalculator(key: valor).toStringAsFixed(2).replaceAll('.', ',')}',
  );
}

double mediaCalculator({required String key}) {
  double total = produtosTratados
      .map((produto) => produto[key])
      .reduce((acc, val) => acc + val);
  return total / produtosTratados.length;
}

void printLucro({required double compared}) {
  final approved = produtosTratados
      .where((produto) => produto['lucro'] > compared)
      .toList();

  print(approved.length > (produtosTratados.length / 2) ? 'SIM' : 'NÂO');
}
