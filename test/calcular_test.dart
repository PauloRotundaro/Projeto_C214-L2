import 'package:test/test.dart';

void main() {
  //Função void Calcular

  double precoAlcool = 4.3;
  double precoGasolina = 7.8;
  String _textoResultado = "";

  test('Preço do álcool é nulo', () {
    assert(precoAlcool == null);
  });

  test('Preço da gasolina é nulo', () {
    assert(precoGasolina == null);
  });

  test('Preço da gasolina é o dobro do preço do álcool', () {
    assert(precoGasolina == 2 * precoAlcool);
  });

  test('Preço do álcool é um número positivo válido', () {
    assert(precoAlcool != null && precoAlcool >= 0);
  });

  test('Preço da gasolina é um número positivo válido', () {
    assert(precoGasolina != null && precoGasolina >= 0);
  });

  test('Preço da gasolina é maior que o do álcool', () {
    assert(precoGasolina != null && precoGasolina >= precoAlcool);
  });
}
