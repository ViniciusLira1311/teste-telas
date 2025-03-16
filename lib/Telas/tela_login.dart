import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
              background: Placeholder(), // Substitua por um gradiente se quiser
              title: Text('Login'),
            ),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(25),
            sliver: SliverToBoxAdapter(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      const Text('Bem-vindo', style: TextStyle(fontSize: 24)),
                      const SizedBox(height: 30),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Email'),
                      ),
                      TextField(
                        decoration: const InputDecoration(labelText: 'Senha'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Entrar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
