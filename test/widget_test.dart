import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_praktik26/main.dart';

void main() {
  testWidgets('Menampilkan halaman WhatsApp', (WidgetTester tester) async {
    await tester.pumpWidget(const TugasUIFlutterApp());

    expect(find.text('WhatsApp'), findsOneWidget);
    expect(find.text('CHATS'), findsOneWidget);
  });
}