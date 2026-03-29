import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:app_saude_tpc3/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Deve adicionar um dependente e mostrar na lista', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    
    await Future.delayed(const Duration(seconds: 2)); 

    final botaoAdicionar = find.byType(FloatingActionButton);
    await tester.tap(botaoAdicionar);
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 2));

    final campoNome = find.widgetWithText(TextFormField, 'Nome *');
    final campoIdade = find.widgetWithText(TextFormField, 'Idade *');

    await tester.enterText(campoNome, 'João Silva');
    await tester.enterText(campoIdade, '12');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 2));

    final botaoSalvar = find.text('Salvar');
    await tester.tap(botaoSalvar);
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 3));
    
    expect(find.text('João Silva'), findsOneWidget);
  });
}