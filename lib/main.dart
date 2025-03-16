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
      home: Scaffold(
        appBar: AppBar(title: const Text('Teste de Telas')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const TelaLogin()),
                    ),
                child: const Text('Abrir Tela de Login'),
              ),
              ElevatedButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const TelaAdmin()),
                    ),
                child: const Text('Abrir Tela Admin'),
              ),
              ElevatedButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const UserProfile()),
                    ),
                child: const Text('Abrir Perfil'),
              ),
              ElevatedButton(
                onPressed:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const TelaPublicacoes(),
                      ),
                    ),
                child: const Text('Abrir Publicações'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
