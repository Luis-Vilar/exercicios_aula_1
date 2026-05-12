import 'package:exercicio/db_utils.dart';
import 'package:exercicio/data/produtos.dart' as db;

void main(List<String> arguments) {
  ListProducts products = ListProducts(
    products: db.produtos.map((produto) {
      produto['valor_venda'] = produto['valor_venda'].replaceAll(',', '.');
      produto['valor_venda'] = double.parse(produto['valor_venda']);
      produto['valor_compra'] = double.parse(produto['valor_compra']);
      produto['lucro'] = produto['valor_venda'] - produto['valor_compra'];

      return Product(
        id: (produto['id'] as int),
        name: (produto['produto'] as String),
        purchaseValue: (produto['valor_compra'] as double),
        saleValue: (produto['valor_venda'] as double),
        profitValue: (produto['lucro'] as double),
      );
    }).toList(),
  );

  print("\n\nPRODUTOS\n");
  products.printProducts(selection: ProductsSelector.all);
  //*Contexto: Você recebeu uma lista de Produtos da API e
  //*precisar mostrar para o usuário algumas informações,
  //*sendo elas o ID do produto, o nome e o lucro que esta dando

  //? Imprimir na tela conforme modelo abaixo:

  // print("ID: 1| PRODUTO: SABÃO | LUCRO POR VENDA: R$12,00");
  // print("ID: 1| PRODUTO: oleo | LUCRO POR VENDA: -R$7,00");

  print("\n\nMÉDIAS\n");
  products.printAverages(selector: AverageSelector.purchase);
  products.printAverages(selector: AverageSelector.sale);
  products.printAverages(selector: AverageSelector.profit);
  //*Contexto: Agora você precisar gerar alguns relatórios sintéticos para o usuário:

  //? Imprimir a média do valor de venda: Média valor venda: R$21,00
  //? Imprimir a média do valor de compra: Média valor compra: R$18,00
  //? Imprimir a média do lucro: Média valor compra: R$3,50

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n");
  products.printProfit(comparedValue: 0);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");
  products.printProfit(comparedValue: 2);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nPRODUTOS QUE DÃO PREJUIZO:\n");
  products.printProducts(selection: ProductsSelector.loss);
  //*Contexto: Agora você precisar gerar um relatório analítico mostrando
  //*os produtos que dão prejuizo:

  //? imprimir produtos que dão prejuizo, para cada linha imprimir conforme exemplo: ID: 1 | PRODUTO: SABÃO | PREJUIZO: -R$3,00
}
