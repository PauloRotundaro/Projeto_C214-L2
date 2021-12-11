import 'package:AlcoolOuGasolina/controller.dart';
import 'package:dio/dio.dart';

class Repository {
  late Dio dio;
  Repository(this.dio);

  Future<List<CombustivelModel>> getData() async {
    final response = await dio.get("");
    final resultList = (response.data["data"] as List)
        .map((json) => CombustivelModel.fromJson(json))
        .toList();
    return resultList;
  }
}

class CombustivelModel {
  final String? name;
  final double? value;

  CombustivelModel({this.name, this.value});

  factory CombustivelModel.fromJson(Map<String, dynamic> json) {
    return CombustivelModel(name: json["name"], value: json["value"]);
  }
}
