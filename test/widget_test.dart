import 'package:flutter_test/flutter_test.dart';
import 'package:practica_4/main.dart';

void main() {
  testWidgets('muestra materias y navega al detalle', (tester) async {
    await tester.pumpWidget(const CatalogoMateriasApp());
    expect(find.text('Programación móvil'), findsOneWidget);
    await tester.tap(find.text('Programación móvil'));
    await tester.pumpAndSettle();
    expect(find.text('Detalle de materia'), findsOneWidget);
    expect(find.text('PMO-401'), findsOneWidget);
  });
}
