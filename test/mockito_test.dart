import 'dart:convert';

import 'package:AlcoolOuGasolina/controller.dart';
import 'package:AlcoolOuGasolina/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'utils/mockdata.dart';

class ControllerMock extends Mock implements Controller {}

class DioMock extends Mock implements Dio {}

void main() {
  ControllerMock mock;
  DioMock dio;
  Repository repository;

  setUp(() {
    mock = ControllerMock();
    dio = DioMock();
    repository = Repository(dio);
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(mock, isInstanceOf<Controller>());
    });

    test('Teste response gasolina', () async {
      when(dio.get(any, options: anyNamed('options'))).thenAnswer(
        (_) async => Response(
          data: jsonDecode(dataMock),
          statusCode: 200,
        ),
      );
      await repository.getData().then((value) {
        expect('Gasolina', value.first.name);
        expect(7.0, value.first.value);
      });
    });

    test('Teste response alcool', () async {
      when(dio.get(any, options: anyNamed('options'))).thenAnswer(
        (_) async => Response(
          data: jsonDecode(dataMock),
          statusCode: 200,
        ),
      );
      await repository.getData().then((value) {
        expect('Alcool', value.last.name);
        expect(4.5, value.last.value);
      });
    });
  });
}
