import 'package:ejs_widgets/ej4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('El corazón y el contador cambian juntos y se reinician', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: Publicacion()));

    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('A 12 personas les gusta esto'), findsOneWidget);

    await tester.tap(find.byTooltip('Me gusta'));
    await tester.pump();
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.text('A 11 personas les gusta esto'), findsOneWidget);

    await tester.tap(find.byTooltip('Me gusta'));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('A 12 personas les gusta esto'), findsOneWidget);

    await tester.tap(find.text('Reiniciar'));
    await tester.pump();
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    expect(find.text('A 0 personas les gusta esto'), findsOneWidget);

    await tester.tap(find.byTooltip('Me gusta'));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsOneWidget);
    expect(find.text('A 1 personas les gusta esto'), findsOneWidget);
  });
}
