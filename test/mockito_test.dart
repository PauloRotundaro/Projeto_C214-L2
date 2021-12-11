import 'dart:convert';
import 'package:AlcoolOuGasolina/controller.dart';
import 'package:AlcoolOuGasolina/repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'utils/mockdata.dart';

class ControllerMock extends Mock implements Controller {}

class DioMock extends Mock implements Dio {}

void main() {
  late ControllerMock mock;
  final dio = DioMock();
  final repository = Repository(dio);

  setUp(() {
    mock = ControllerMock();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(mock, isInstanceOf<Controller>());
    });

    test('teste', () async {
      when(dio.get("")).thenAnswer(
        (_) async => Response(
          data: jsonDecode(dataMock),
          statusCode: 200,
          requestOptions: RequestOptions(path: ""),
        ),
      );
      await repository.getData().then((value) => print(value));
    });
  });
}
