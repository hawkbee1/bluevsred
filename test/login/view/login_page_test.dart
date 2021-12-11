import 'package:bluevsred/login/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';
import '../../helpers/helpers.dart';

void main() {
  group('loginPage', () {
    late MockNavigator navigator;
    setUp(() {
      navigator = MockNavigator();
      when(() => navigator.push(any())).thenAnswer((_) async {});
    });

    testWidgets('routes to MapPage when login button is pressed',
        (tester) async {
      await tester.pumpApp(
        MockNavigatorProvider(
          navigator: navigator,
          child: const LoginPage(),
        ),
      );
      await tester.tap(find.byKey(const Key('LoginButton')));
      verify(() => navigator.push(any())).called(1);
    });
  });
}
