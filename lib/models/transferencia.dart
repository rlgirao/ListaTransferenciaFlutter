class Transferencia {
  final double valorConta;
  final int numeroConta;

  Transferencia(this.valorConta, this.numeroConta);

  @override
  String toString() {
    return 'Transferência{valorConta: $valorConta, numeroConta: $numeroConta}';
  }
}