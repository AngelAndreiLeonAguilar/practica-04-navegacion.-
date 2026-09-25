import 'package:flutter/material.dart';

import '../models/materia.dart';
import '../widgets/materia_card.dart';
import 'acerca_page.dart';
import 'detalle_page.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  static const materias = [
    Materia(
      nombre: 'Programación móvil',
      clave: 'PMO-401',
      semestre: 4,
      creditos: 8,
      descripcion:
          'Diseño y desarrollo de aplicaciones móviles con Flutter y Dart.',
    ),
    Materia(
      nombre: 'Bases de datos',
      clave: 'BDD-302',
      semestre: 3,
      creditos: 8,
      descripcion: 'Modelado, consultas y administración de bases de datos relacionales.',
    ),
    Materia(
      nombre: 'Estructuras de datos',
      clave: 'EDD-203',
      semestre: 2,
      creditos: 8,
      descripcion: 'Organización eficiente de datos mediante listas, pilas, colas y árboles.',
    ),
    Materia(
      nombre: 'Redes de computadoras',
      clave: 'RDC-501',
      semestre: 5,
      creditos: 7,
      descripcion: 'Principios de comunicación, protocolos y servicios de red.',
    ),
    Materia(
      nombre: 'Ingeniería de software',
      clave: 'IDS-601',
      semestre: 6,
      creditos: 8,
      descripcion: 'Procesos, requisitos y buenas prácticas para construir software de calidad.',
    ),
    Materia(
      nombre: 'Sistemas operativos',
      clave: 'SOI-402',
      semestre: 4,
      creditos: 7,
      descripcion:
          'Administración de recursos, procesos, memoria y almacenamiento.',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Catálogo de materias'),
      actions: [
        IconButton(
          tooltip: 'Acerca de',
          icon: const Icon(Icons.info_outline),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AcercaPage()),
          ),
        ),
      ],
    ),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'Oferta académica',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 4),
        const Text('Selecciona una materia para consultar sus datos.'),
        const SizedBox(height: 12),
        ...materias.map(
          (materia) => MateriaCard(
            materia: materia,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetallePage(materia: materia)),
            ),
          ),
        ),
      ],
    ),
  );
}
