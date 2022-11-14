// KindaCode.com
import 'dart:math';

void main() {
//   int min = 90;
//   int max = 150;

//   int randomnum = min + Random().nextInt((max + 1) - min);

//   print(randomnum);

  int mini = 90;
  int maxi = 150;
  int tamanhoLista = mini + Random().nextInt((maxi + 1) - mini);
  int amplitude = tamanhoLista - 89;

  List<int> list = [
    for (int i = 0; i <= tamanhoLista; i++) Random().nextInt(9999)
  ];

  print(list);
  print(tamanhoLista);
//   print(amplitude);
//   print(list.reduce(max));
//   print('Maior valor encontrado: ${list.reduce(max)}');
//   list.sort();
//   print(list.reversed);
}
