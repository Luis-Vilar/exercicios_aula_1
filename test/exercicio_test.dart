import 'package:test/test.dart';
import 'package:exercicio/extensions.dart';

void main() {
  test('test toBrazilianReal extension whit negative value', () {
    expect((-1.05).toBrazilianReal(), '-R\$ 1,05');
  });

  test('test toBrazilianReal extension whit positive value', () {
    expect((1.05).toBrazilianReal(), 'R\$ 1,05');
  });
}
