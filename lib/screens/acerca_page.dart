import 'package:flutter/material.dart';

class AcercaPage extends StatelessWidget {
  const AcercaPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Acerca de la práctica')),
    body: const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu_book, size: 72),
          SizedBox(height: 16),
          Text(
            'Práctica 4',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            'Aplicación de catálogo de materias. Demuestra navegación entre pantallas, paso de objetos y componentes reutilizables.',
          ),
        ],
      ),
    ),
  );
}
