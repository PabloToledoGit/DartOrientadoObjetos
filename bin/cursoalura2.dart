import 'dart:ffi';

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Laranja';
  String sabor = 'Citríca';
  int diasParaMadura = 30;
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: cor);

  funcQuantosDiasMadura(dias: diasDesdeColheita, diasFaltam: diasParaMadura );
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
