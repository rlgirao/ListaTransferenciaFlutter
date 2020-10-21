import 'package:flutter/material.dart';
import 'package:bytebank/components/inputs_personalizados.dart';
import 'package:bytebank/models/transferencia.dart';

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _numeroConta = TextEditingController();
  final TextEditingController _valorConta = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criando transferência"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputsPersonalizados(
              controlador: _numeroConta,
              label: "Número da conta",
              placeholder: "0000",
            ),
            InputsPersonalizados(
              controlador: _valorConta,
              label: "Valor",
              placeholder: "0.00",
              icone: Icons.monetization_on,
            ),
            RaisedButton(
              child: Text("Confirmar"),
              onPressed: () => _criarTransferencia(context),
            ),
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_numeroConta.text);
    final double valorConta = double.tryParse(_valorConta.text);

    if (numeroConta != null && valorConta != null) {
      final transferenciaCriada = Transferencia(valorConta, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}
