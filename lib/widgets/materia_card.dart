import 'package:flutter/material.dart';

import '../models/materia.dart';

class MateriaCard extends StatelessWidget {
  final Materia materia;
  final VoidCallback onTap;

  const MateriaCard({super.key, required this.materia, required this.onTap});

  @override
  Widget build(BuildContext context) => Card(
    clipBehavior: Clip.antiAlias,
    child: ListTile(
      contentPadding: const EdgeInsets.all(16),
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        child: const Icon(Icons.menu_book_outlined),
      ),
      title: Text(materia.nombre),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text('${materia.clave} · ${materia.creditos} créditos'),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    ),
  );
}
