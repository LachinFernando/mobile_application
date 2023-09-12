import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(width: 0.0, height: 6.0),
            Text(
              quote.author,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(width: 0.0, height: 6.0),
            ElevatedButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: const Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}