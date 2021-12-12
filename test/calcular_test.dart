import 'package:test/test.dart';

void main() {
  double precoAlcool = 4.3;
  double precoGasolina = 7.8;

  test('Preço do álcool é diferente de nulo', () {
    assert(precoAlcool != null);
  });

  test('Preço da gasolina é diferente de nulo', () {
    assert(precoGasolina != null);
  });

  test('Preço da gasolina não é o dobro do preço do álcool', () {
    AssertionError(precoGasolina == 2 * precoAlcool);
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
