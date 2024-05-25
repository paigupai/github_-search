import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'mock_generator.mocks.dart';

/// mockの生成
@GenerateMocks([Dio])
void main() {
  group('Dioのmockの生成', () {
    test('正常', () {
      expect(MockDio(), isNotNull);
    });
  });
}
