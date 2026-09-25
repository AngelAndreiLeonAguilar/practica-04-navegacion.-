import 'package:flutter/material.dart';

import '../models/materia.dart';

class DetallePage extends StatelessWidget {
  final Materia materia;
  const DetallePage({super.key, required this.materia});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Detalle de materia')),
    body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.school_outlined,
            size: 88,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            materia.nombre,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Chip(label: Text(materia.clave)),
          const SizedBox(height: 20),
          _Dato(
            icono: Icons.calendar_today_outlined,
            etiqueta: 'Semestre',
            valor: '${materia.semestre}°',
          ),
          const SizedBox(height: 12),
          _Dato(
            icono: Icons.workspace_premium_outlined,
            etiqueta: 'Créditos',
            valor: '${materia.creditos}',
          ),
          const SizedBox(height: 24),
          Text('Descripción', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(
            materia.descripcion,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    ),
  );
}

class _Dato extends StatelessWidget {
  final IconData icono;
  final String etiqueta;
  final String valor;
  const _Dato({
    required this.icono,
    required this.etiqueta,
    required this.valor,
  });
  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icono),
      const SizedBox(width: 12),
      Text('$etiqueta: ', style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(valor),
    ],
  );
}
