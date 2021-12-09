import 'package:test/test.dart';

void main(){
  //Função void Calcular

    double? precoAlcool = 4;
    double? precoGasolina = 7;
    String _textoResultado = "";

    test('Preço do alcool é nulo', () {
      assert(precoAlcool != null && precoAlcool >= 0);
    });

    test('Preço da gasolina é nulo', () {
      assert(precoGasolina != null && precoGasolina >= 0);
    });

    if( precoAlcool == null || precoGasolina == null ){

      _textoResultado = "Número invalido, digite números maiores que o 0 e utilizando (.) ";

    }else{
      if((precoAlcool/precoGasolina) >= 0.7){
        _textoResultado = "Melhor abastecer com GASOLINA!";
      }else{
        _textoResultado = "Melhor abastecer com ALCOOL!";
      }
    }

}