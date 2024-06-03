import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('input page', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ViewPage(
          name: 'Huda ganteng',
          identitynumber: '01',
          birthdate: '01 juli 2004',
          gender: 'laki laki',
          phonenumber: '081340318422',
          lasteducation: 'sma',
          religion: 'islam',
          job: 'ngoding',
          address: 'jogja',
          accounttype: 'VIP',
        ),
      ),
    );

    expect(find.text('Name: Huda ganteng'), findsOneWidget);
    expect(find.text('Identity Number: 01'), findsOneWidget);
    expect(find.text('Birht Date: 01 juli 2004'), findsOneWidget);
    expect(find.text('Gender: laki laki'), findsOneWidget);
    expect(find.text('Phone Number: 081340318422'), findsOneWidget);
    expect(find.text('Last Education: sma'), findsOneWidget);
    expect(find.text('Religion: islam'), findsOneWidget);
    expect(find.text('Job: ngoding'), findsOneWidget);
    expect(find.text('Address: jogja'), findsOneWidget);
    expect(find.text('Account Type: VIP'), findsOneWidget);
  });
}