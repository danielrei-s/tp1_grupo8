import 'dart:io' show stdin;
import 'dart:math';

void main(List<String> args) {
  String opcao;
  final int minimo = 90;
  final int maximo = 150;
  int tamanhoLista = minimo + Random().nextInt((maximo + 1) - minimo);
  int amplitude;

  do {
    print(' ');
    print(
        'Gerados $tamanhoLista números inteiros positivos de forma aleatória.');
    print("-------------  MENU -------------");
    print("A - Ver Maior & Menor elemento do conjunto");
    print("B - Amplitude do conjunto");
    print("C - Listar nº ímpares de forma decrescente");
    print("D - Ver lista");
    print("S - Sair");
    print("Opção? ");
    opcao = stdin.readLineSync()!;

    List<int> list = [
      for (int i = 0; i <= tamanhoLista; i++) Random().nextInt(9999)
    ];

    List<int> impar = [];

    switch (opcao.toUpperCase()) {
      case 'A':
        print('');
        print('Maior valor encontrado: ${list.reduce(max)}');
        print('Menor valor encontrado: ${list.reduce(min)}');
        break;

      case 'B':
        amplitude = list.reduce(max) - list.reduce(min);
        print('A amplitude da lista é: $amplitude');
        break;

      case 'C':
        for (int i = 0; i < tamanhoLista; i++) {
          if (list.elementAt(i) % 2 != 0) {
            impar.add(list.elementAt(i));
          }
        }
        print('');
        print('Lista de impares: $impar');
        impar.sort();
        print('');
        print('Lista de impares Decrescente: ${impar.reversed}');
        break;

      case 'D':
        print('');
        print(list);
        break;

      default:
        {
          if (opcao.toUpperCase() != 'S') {
            print('');
            print(
                'Opção $opcao não é valida, escolha novamente uma letra do menu');
          }
        }
    }
  } while (opcao.toUpperCase() != 'S');
  print('');
  print('Programa terminado com sucesso.');
  print('');
}
