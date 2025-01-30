import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TitleController = TextEditingController();
  final ValueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

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
              decoration: InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: ValueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    final title = TitleController.text;
                    final value = double.tryParse(ValueController.text) ?? 0.0;
                    onSubmit(title, value);
                  },
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
