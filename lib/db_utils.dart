enum SelectorProdutos { todos, prejuizo }
enum SelectorMediaCalculator { compra, venda, lucro }

class Produto {
  int id;
  String nome;
  double valorCompra;
  double valorVenda;
  double lucro;

  Produto({
    required this.id,
    required this.nome,
    required this.valorCompra,
    required this.valorVenda,
    required this.lucro,
  });
}

class ListaProdutos {
  List<Produto> produtos;
  ListaProdutos({required this.produtos});

  void printProducts({required SelectorProdutos selection}) {
    Iterable<String> produtos = [];

    switch (selection) {
      case SelectorProdutos.todos:
        produtos = this.produtos.map(
          (produto) =>
              'ID: ${produto.id} | PRODUTO: ${produto.nome} | LUCRO POR VENDA: R\$ ${produto.lucro.toStringAsFixed(2).replaceAll('.', ',')}',
        );
      case SelectorProdutos.prejuizo:
        produtos = this.produtos
            .where((produto) => produto.lucro < 0)
            .map(
              (produto) =>
                  'ID: ${produto.id} | PRODUTO: ${produto.nome} | PREJUICIO: R\$ ${produto.lucro.toStringAsFixed(2).replaceAll('.', ',')}',
            );
    }
    for (var produto in produtos) {
      print(produto);
    }
  }

  void _printFormattedMessageMedia({
    required String key,
    required double value,
  }) {
    print(
      'Media valor $key R\$ ${value.toStringAsFixed(2).replaceAll('.', ',')}',
    );
  }

  void printMedias({required SelectorMediaCalculator selector}) {
    double total = 0;
    String key = '';

    switch (selector) {
      case SelectorMediaCalculator.compra:
        key = 'compra';
        total = produtos
            .map((p) => p.valorCompra)
            .reduce((acc, val) => acc + val);
      case SelectorMediaCalculator.venda:
        key = 'venda';
        total = produtos
            .map((p) => p.valorVenda)
            .reduce((acc, val) => acc + val);
      case SelectorMediaCalculator.lucro:
        key = 'lucro';
        total = produtos.map((p) => p.lucro).reduce((acc, val) => acc + val);
    }

    double media = total / produtos.length;
    _printFormattedMessageMedia(key: key, value: media);
  }

  void printLucro({required double compared}) {
    final approved = produtos
        .where((produto) => produto.lucro > compared)
        .toList();

    print(approved.length > (produtos.length / 2) ? 'SIM' : 'NÂO');
  }
}

//Todo:
//* - Implementar extensions para formatar valores de moeda -R$ e R$ 
//* - Renomear 100% para ingles tirando a mistura de linguagens