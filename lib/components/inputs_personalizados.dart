import 'package:flutter/material.dart';
import 'package:bytebank/models/transferencia.dart';

class InputsPersonalizados extends StatelessWidget {
  final TextEditingController controlador;
  final String label;
  final String placeholder;
  final IconData icone;

  const InputsPersonalizados(
      {this.controlador, this.label, this.placeholder, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: label,
          hintText: placeholder,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valorConta.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
