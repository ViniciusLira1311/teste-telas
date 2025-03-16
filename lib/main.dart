import 'package:flutter/material.dart';
import 'Telas/tela_login.dart';
import 'Telas/tela_admin.dart';
import 'Telas/tela_profile.dart';
import 'Telas/tela_publicacoes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Rotas nomeadas para navegação
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const TelaLogin(),
        '/admin': (context) => const TelaAdmin(),
        '/profile': (context) => const UserProfile(),
        '/posts': (context) => const TelaPublicacoes(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telas do App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('Abrir Login'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/admin'),
              child: const Text('Abrir Admin'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/profile'),
              child: const Text('Abrir Perfil'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/posts'),
              child: const Text('Abrir Publicações'),
            ),
          ],
        ),
      ),
    );
  }
}