# Práctica 4: Navegación, rutas y componentes reutilizables

## Objetivo

Construir una aplicación Flutter organizada en modelos, pantallas y widgets reutilizables. El catálogo permite seleccionar una materia y enviar el objeto completo a su vista de detalle.

## Funciones

- Lista de seis materias.
- Pantalla de detalle con nombre, clave, semestre, créditos y descripción.
- Pantalla informativa adicional.
- Navegación mediante `Navigator.push` y `MaterialPageRoute`.
- Widget reutilizable `MateriaCard`.

## Requisitos

- Flutter SDK 3.x o posterior.
- Navegador Edge o Chrome para ejecutar la versión web.

## Instalación y ejecución

```bash
flutter pub get
flutter run -d edge
```

## Pruebas realizadas

```bash
dart format lib test
flutter analyze
flutter test
```

Resultado: análisis estático sin incidencias y prueba de navegación aprobada.

## Casos manuales

1. Abrir el catálogo y comprobar que aparecen seis materias.
2. Seleccionar una materia y verificar nombre, clave, semestre, créditos y descripción en su detalle.
3. Regresar al catálogo y abrir la pantalla **Acerca de** mediante el icono de información.

## Participantes

- ANGEL ANDREI LEON AGUILAR — 8950
- MANUEL DANIEL YAH DZUL — 8967
- YOSHUAN ADRIAN CAHUICH CANUL — 9006

## Evidencias

Las capturas y el registro de verificación se encuentran en `docs/evidencias/practica-04/`.