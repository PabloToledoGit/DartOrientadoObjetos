import 'dart:ffi';

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Laranja';
  String sabor = 'Citríca';
  int diasParaMadura = 30;
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  var fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);

  print({fruta01.nome, fruta01.peso, fruta01.cor, fruta01.sabor});

}
class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita);
}


funcQuantosDiasMadura({required int dias, required int diasFaltam}){
    int quantosDiasFaltam = diasFaltam - dias;
    if(quantosDiasFaltam <= 0){
      print('faltam 0 dias para o amadurecimento ');
    }else{
      print('faltam $quantosDiasFaltam dias para o amadurecimento');
    }
}

mostrarMadura({required String? nome, required int? dias, required String? cor}) {
  if (dias! >= 30) {
    print('A $nome está madura');
  } else {
    print('a $nome não está madura');
  }

  print('A $nome é $cor');
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
