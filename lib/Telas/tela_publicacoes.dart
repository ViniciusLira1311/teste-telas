import 'package:flutter/material.dart';

class TelaPublicacoes extends StatelessWidget {
  const TelaPublicacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Publicações')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(labelText: 'Título'),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: 'Conteúdo'),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Publicar')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder:
                  (context, index) => Card(
                    child: ListTile(
                      title: Text('Post $index'),
                      subtitle: Text('Conteúdo do post $index...'),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
