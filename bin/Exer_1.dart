import 'package:tp1_grupo8/testarPrimo.dart';

void main(List<String> args) {
  int count = 0;
  int total = 0;
  double media = 0;
  for (int i = 100; i < 201; i++) {
    if (Testar.ePrimo(i) == true) {
      total++;
      count = count + i;
      media = count / total;
      //print(i);
      //print(total);
    }
  }
  print('Soma de primos no intervalo: $count');
  print('Média de primos no intervalo: $media');
}
