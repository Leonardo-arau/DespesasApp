import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final TitleController = TextEditingController();

  final ValueController = TextEditingController();

  _submitForm() {
    final title = TitleController.text;
    final value = double.tryParse(ValueController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: TitleController,
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: ValueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _submitForm, 
                  style: TextButton.styleFrom(
                    foregroundColor:
                        Color.fromARGB(255, 111, 78, 55), // Cor do texto
                    textStyle: TextStyle(
                      fontSize: 18, // Tamanho da fonte
                    ),
                  ),
                  child: Text('Nova Transação'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
