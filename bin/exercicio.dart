import 'package:exercicio/db_utils.dart';

void main(List<String> arguments) {
  print("\n\nPRODUTOS\n");
  printProducts(selection: Selector.todos);
  //*Contexto: Você recebeu uma lista de Produtos da API e
  //*precisar mostrar para o usuário algumas informações,
  //*sendo elas o ID do produto, o nome e o lucro que esta dando

  //? Imprimir na tela conforme modelo abaixo:

  // print("ID: 1| PRODUTO: SABÃO | LUCRO POR VENDA: R$12,00");
  // print("ID: 1| PRODUTO: oleo | LUCRO POR VENDA: -R$7,00");

  print("\n\nMÉDIAS\n");
  printMedias(valor: 'valor_compra');
  printMedias(valor: 'valor_venda');
  printMedias(valor: 'lucro');
  //*Contexto: Agora você precisar gerar alguns relatórios sintéticos para o usuário:

  //? Imprimir a média do valor de venda: Média valor venda: R$21,00
  //? Imprimir a média do valor de compra: Média valor compra: R$18,00
  //? Imprimir a média do lucro: Média valor compra: R$3,50

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n");
  printLucro(compared: 0);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");
  printLucro(compared: 2);
  //? imprimir "SIM" ou "NÃO"

  print("\n\nPRODUTOS QUE DÃO PREJUIZO:\n");
  printProducts(selection: Selector.prejuizo);
  //*Contexto: Agora você precisar gerar um relatório analitico mostrando
  //*os produtos que dão prejuizo:

  //? imprimir produtos que dão prejuizo, para cada linha imprimir conforme exemplo: ID: 1 | PRODUTO: SABÃO | PREJUIZO: -R$3,00
}
