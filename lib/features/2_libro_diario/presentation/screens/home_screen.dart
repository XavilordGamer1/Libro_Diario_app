// lib/features/2_libro_diario/presentation/screens/home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Libro Diario')),
      body: const Center(child: Text('¡Bienvenido a tu Libro Diario!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Lógica para ir a la pantalla de crear nuevo asiento
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
