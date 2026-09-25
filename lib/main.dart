import 'package:flutter/material.dart';

import 'screens/inicio_page.dart';

void main() => runApp(const CatalogoMateriasApp());

class CatalogoMateriasApp extends StatelessWidget {
  const CatalogoMateriasApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Catálogo de materias',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    home: const InicioPage(),
  );
}
