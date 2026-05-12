import 'package:exercicio/db_utils.dart';
import 'package:exercicio/data/produtos.dart' as db;

void main(List<String> arguments) {
  ListaProdutos produtos = ListaProdutos(
    produtos: db.produtos.map((produto) {
      produto['valor_venda'] = produto['valor_venda'].replaceAll(',', '.');
      produto['valor_venda'] = double.parse(produto['valor_venda']);
      produto['valor_compra'] = double.parse(produto['valor_compra']);
      produto['lucro'] = produto['valor_venda'] - produto['valor_compra'];

      return Produto(
        id: (produto['id'] as int),
        nome: (produto['produto'] as String),
        valorCompra: (produto['valor_compra'] as double),
        valorVenda: (produto['valor_venda'] as double),
        lucro: (produto['lucro'] as double),
      );
    }).toList(),
  );

  print("\n\nPRODUTOS\n");
  produtos.printProducts(selection: SelectorProdutos.todos);
  //*Contexto: Você recebeu uma lista de Produtos da API e
  //*precisar mostrar para o usuário algumas informações,
  //*sendo elas o ID do produto, o nome e o lucro que esta dando

  //? Imprimir na tela conforme modelo abaixo:

  // print("ID: 1| PRODUTO: SABÃO | LUCRO POR VENDA: R$12,00");
  // print("ID: 1| PRODUTO: oleo | LUCRO POR VENDA: -R$7,00");

  print("\n\nMÉDIAS\n");
  produtos.printMedias(selector: SelectorMediaCalculator.compra);
  produtos.printMedias(selector: SelectorMediaCalculator.venda);
  produtos.printMedias(selector: SelectorMediaCalculator.lucro);
  //*Contexto: Agora você precisar gerar alguns relatórios sintéticos para o usuário:

  //? Imprimir a média do valor de venda: Média valor venda: R$21,00
  //? Imprimir a média do valor de compra: Média valor compra: R$18,00
  //? Imprimir a média do lucro: Média valor compra: R$3,50

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n");
  produtos.printLucro(compared: 0);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");
  produtos.printLucro(compared: 2);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nPRODUTOS QUE DÃO PREJUIZO:\n");
  produtos.printProducts(selection: SelectorProdutos.prejuizo);
  //*Contexto: Agora você precisar gerar um relatório analítico mostrando
  //*os produtos que dão prejuizo:

  //? imprimir produtos que dão prejuizo, para cada linha imprimir conforme exemplo: ID: 1 | PRODUTO: SABÃO | PREJUIZO: -R$3,00
}
