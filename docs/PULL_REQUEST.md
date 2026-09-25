# Práctica 04: navegación, rutas y componentes reutilizables

## Propósito

Implementar un catálogo de materias en Flutter aplicando una arquitectura organizada por modelos, pantallas y widgets reutilizables.

## Integrantes

- ANGEL ANDREI LEON AGUILAR — 8950
- MANUEL DANIEL YAH DZUL — 8967
- YOSHUAN ADRIAN CAHUICH CANUL — 9006

## Funciones agregadas

- Catálogo con seis materias.
- Navegación de la lista a la pantalla de detalle.
- Paso del objeto `Materia` seleccionado hacia su vista de detalle.
- Pantalla adicional «Acerca de».
- Widget reutilizable `MateriaCard`.

## Cómo ejecutar

```bash
flutter pub get
flutter run -d edge
```

## Pruebas realizadas

```bash
flutter analyze
flutter test
flutter build web
```

Resultados: análisis sin incidencias, prueba de navegación aprobada y compilación web generada correctamente.

## Evidencias

Las evidencias y su registro se encuentran en la carpeta `docs/evidencias/practica-04/` del repositorio:

- Lista de materias.
- Detalle de una materia.
- Pantalla Acerca de.