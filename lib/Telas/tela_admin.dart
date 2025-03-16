import 'package:flutter/material.dart';

class TelaAdmin extends StatelessWidget {
  const TelaAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel Admin')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildManagementSection(
              title: 'Usuários',
              columns: ['ID', 'Nome', 'Email'],
            ),
            const SizedBox(height: 20),
            _buildManagementSection(
              title: 'Posts',
              columns: ['ID', 'Título', 'Conteúdo'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildManagementSection({
    required String title,
    required List<String> columns,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            DataTable(
              columns:
                  columns.map((col) => DataColumn(label: Text(col))).toList(),
              rows: List.generate(
                3,
                (index) => DataRow(
                  cells:
                      columns
                          .map((col) => DataCell(Text('Dado $index')))
                          .toList(),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Editar')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Excluir')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
