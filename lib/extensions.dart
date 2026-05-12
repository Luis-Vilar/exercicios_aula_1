extension DoubleFormatting on double {
  String toBrazilianReal() {
    String value = abs().toStringAsFixed(2).replaceAll('.', ',');
    return isNegative ? '-R\$ $value' : 'R\$ $value';
  }
}
