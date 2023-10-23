import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice_7/main.dart'; // Замените 'your_project_name' на название вашего проекта
import 'package:practice_7/user_info_screen.dart'; // Замените 'your_project_name' на название вашего проекта

void main() {
  testWidgets('Registration form test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Вводим данные в текстовые поля
    await tester.enterText(
        find.byKey(const ValueKey('name_field')), 'John Doe');
    await tester.enterText(
        find.byKey(const ValueKey('email_field')), 'johndoe@example.com');

    // Нажимаем кнопку "Submit form"
    await tester.tap(find.byKey(const ValueKey('submit_button')));
    await tester.pump();

    // Проверяем, что произошла навигация на экран UserInfoScreen
    expect(find.byType(UserInfoScreen), findsOneWidget);

    // Проверяем, что введенные данные отображаются на экране UserInfoScreen
    expect(find.text('Name: John Doe'), findsOneWidget);
    expect(find.text('Email: johndoe@example.com'), findsOneWidget);
  });
}
