import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Home screen shows featured movie and sections', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Dora and the lost city of gold'), findsOneWidget);
    expect(find.text('New Releases'), findsOneWidget);
    expect(find.text('Recomended'), findsOneWidget);
  });
}
