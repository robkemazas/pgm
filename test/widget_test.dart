import 'package:flutter_test/flutter_test.dart';
import 'package:pgm_iphone/main.dart';
import 'package:pgm_iphone/screens/home_screen.dart';

void main() {
  testWidgets('App launches to home screen', (WidgetTester tester) async {
    await tester.pumpWidget(const PgmApp());
    await tester.pumpAndSettle();
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
