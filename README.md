# Exercicio da aula de dart dia 8 de marzo de 2026

## Data dos produtos

```dart
 List<Map<String, dynamic>> produtos = [
    {
      "id": 1,
      "produto": "Feijão Flutterado 1kg",
      "valor_venda": "8,17",
      "valor_compra": "5.15",
    },
    {
      "id": 2,
      "produto": "Suco dartado 1l",
      "valor_venda": "12,00",
      "valor_compra": "10.15",
    },
    {
      "id": 3,
      "produto": "Bolacha null safety",
      "valor_venda": "4,20",
      "valor_compra": "2.50",
    },
    {
      "id": 4,
      "produto": "Arroz Clean Code 5kg",
      "valor_venda": "28,50",
      "valor_compra": "19.90",
    },
    {
      "id": 5,
      "produto": "Macarrão Async/Await 500g",
      "valor_venda": "5,40",
      "valor_compra": "3.10",
    },
    {
      "id": 6,
      "produto": "Café Hot Reload 500g",
      "valor_venda": "18,90",
      "valor_compra": "12.00",
    },
    {
      "id": 7,
      "produto": "Leite Widget Tree 1l",
      "valor_venda": "6,25",
      "valor_compra": "7.15",
    },
    {
      "id": 8,
      "produto": "Açúcar State Management 1kg",
      "valor_venda": "4,80",
      "valor_compra": "2.90",
    },
    {
      "id": 9,
      "produto": "Óleo de Soja Boilerplate 900ml",
      "valor_venda": "7,30",
      "valor_compra": "8.10",
    },
    {
      "id": 10,
      "produto": "Detergente Singleton 500ml",
      "valor_venda": "2,15",
      "valor_compra": "1.05",
    },
    {
      "id": 11,
      "produto": "Pão de Forma Material Design",
      "valor_venda": "9,90",
      "valor_compra": "6.20",
    },
    {
      "id": 12,
      "produto": "Manteiga Build Context 200g",
      "valor_venda": "7,40",
      "valor_compra": "7.80",
    },
    {
      "id": 13,
      "produto": "Iogurte GetX 170g",
      "valor_venda": "3,20",
      "valor_compra": "1.95",
    },
  ];

```

## Exercicio

```dart

  print("\n\nPRODUTOS\n");
  
  //*Contexto: Você recebeu uma lista de Produtos da API e
  //*precisar mostrar para o usuário algumas informações,
  //*sendo elas o ID do produto, o nome e o lucro que esta dando

  //? Imprimir na tela conforme modelo abaixo:

  // print("ID: 1| PRODUTO: SABÃO | LUCRO POR VENDA: R$12,00");
  // print("ID: 1| PRODUTO: oleo | LUCRO POR VENDA: -R$7,00");

  print("\n\nMÉDIAS\n");
  //*Contexto: Agora você precisar gerar alguns relatórios sintéticos para o usuário:

  //? Imprimir a média do valor de venda: Média valor venda: R$21,00
  //? Imprimir a média do valor de compra: Média valor compra: R$18,00
  //? Imprimir a média do lucro: Média valor compra: R$3,50

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO?:\n");
  //? imprimir "SIM" ou "NÃO"

  print("\n\nMAIOR PARTE DOS PRODUTOS DA LUCRO ACIMA DE R\$2,00?:\n");
  //? imprimir "SIM" ou "NÃO"

  print("\n\nPRODUTOS QUE DÃO PREJUIZO:\n");
  //*Contexto: Agora você precisar gerar um relatório analítico mostrando
  //*os produtos que dão prejuizo:

  //? imprimir produtos que dão prejuizo, para cada linha imprimir conforme exemplo: ID: 1 | PRODUTO: SABÃO | PREJUIZO: -R$3,00

```
