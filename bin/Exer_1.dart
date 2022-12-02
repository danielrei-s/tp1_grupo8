import '../lib/testarPrimo.dart';

void main(List<String> args) {
  int count = 0;
  int total = 0;
  double media = 0;
  for (int i = 100; i < 201; i++) {
    if (Testar.ePrimo(i) == true) {
      total++; //total de primos
      count = count + i; //soma dos selecionados
      media = count / total; //media do conjunto
      //print(i);
      //print(total);
    }
  }
  print('Soma de primos no intervalo: $count');
  print('Média de primos no intervalo: $media');
}
//dewdew