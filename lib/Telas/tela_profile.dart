import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(radius: 60, child: Icon(Icons.person)),
          const Text('João Silva', style: TextStyle(fontSize: 24)),
          const Text('joao@email.com', style: TextStyle(color: Colors.grey)),
          const Text('Bio do usuário...'),
          const SizedBox(height: 20),
          const Text('Posts', style: TextStyle(fontSize: 18)),
          ...List.generate(
            3,
            (index) => Card(child: ListTile(title: Text('Post $index'))),
          ),
          const SizedBox(height: 20),
          const Text('Amigos', style: TextStyle(fontSize: 18)),
          ...List.generate(
            3,
            (index) => ListTile(
              leading: const CircleAvatar(),
              title: Text('Amigo $index'),
            ),
          ),
        ],
      ),
    );
  }
}
