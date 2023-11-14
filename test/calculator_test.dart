import 'package:flutter_testing/math/calculator.dart';
import 'package:test/test.dart';

void main() {
  late Calculator _calculator;
  setUp(() {
    _calculator = Calculator();
  });

  group("calculator test", () {
    test(
      'calculator.sumTwoNumbers() sum both numbers',
      () => expect(_calculator.sumTwoNumbers(1, 3), 4),
    );

    test(
      'calculator.sumTwoNumbers() sum negative numbers',
      () => expect(_calculator.sumTwoNumbers(5, -5), 0),
    );
  });
}
