import 'package:exercicio/extensions.dart';

enum ProductsSelector { all, loss }

enum AverageSelector { purchase, sale, profit }

class Product {
  int id;
  String name;
  double purchaseValue;
  double saleValue;
  double profitValue;

  Product({
    required this.id,
    required this.name,
    required this.purchaseValue,
    required this.saleValue,
    required this.profitValue,
  });
}

class ListProducts {
  List<Product> products;
  ListProducts({required this.products});

  void printProducts({required ProductsSelector selection}) {
    Iterable<String> productsDescriptions = [];

    switch (selection) {
      case ProductsSelector.all:
        productsDescriptions = products.map(
          (product) =>
              'ID: ${product.id} | PRODUTO: ${product.name} | LUCRO POR VENDA: ${product.profitValue.toBrazilianReal()}',
        );
      case ProductsSelector.loss:
        productsDescriptions = products
            .where((product) => product.profitValue < 0)
            .map(
              (product) =>
                  'ID: ${product.id} | PRODUTO: ${product.name} | PREJUICIO: ${product.profitValue.toBrazilianReal()}',
            );
    }
    for (var productDescription in productsDescriptions) {
      print(productDescription);
    }
  }

  void _printFormattedMessageAverage({
    required String key,
    required double value,
  }) {
    print('Media valor $key ${value.toBrazilianReal()}');
  }

  void printAverages({required AverageSelector selector}) {
    double total = 0;
    String key = '';

    switch (selector) {
      case AverageSelector.purchase:
        key = 'compra';
        total = products
            .map((p) => p.purchaseValue)
            .reduce((acc, val) => acc + val);
      case AverageSelector.sale:
        key = 'venda';
        total = products
            .map((p) => p.saleValue)
            .reduce((acc, val) => acc + val);
      case AverageSelector.profit:
        key = 'lucro';
        total = products.map((p) => p.profitValue).reduce((acc, val) => acc + val);
    }

    double media = total / products.length;
    _printFormattedMessageAverage(key: key, value: media);
  }

  void printProfit({required double comparedValue}) {
    final approved = products
        .where((product) => product.profitValue > comparedValue)
        .toList();

    print(approved.length > (products.length / 2) ? 'SIM' : 'NÂO');
  }
}