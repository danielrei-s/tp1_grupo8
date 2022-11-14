import 'dart:io' show stdin;
import 'dart:math';

void main(List<String> args) {
  String opcao; //escolha de menu
  final int minimo = 90; //quantidade min de numeros na lista
  final int maximo = 150; //quantidade max de numeros na lista

  //gera aleatoriamente n entre 90 e 150 (min max)
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
    opcao = stdin.readLineSync()!; //ler user input

    List<int> list = [
      for (int i = 0; i <= tamanhoLista; i++) Random().nextInt(9999)
    ]; //gera lista com ints aleatórios entre 0 e 9999.

    List<int> impar = []; //para adicionar impares depois

    switch (opcao.toUpperCase()) {
      //user fail safe
      case 'A':
        print('');
        print('Maior valor encontrado: ${list.reduce(max)}');
        print('Menor valor encontrado: ${list.reduce(min)}');
        break;

      case 'B':
        //amplitude = maior valor subtraido do menor num conj de dados
        amplitude = list.reduce(max) - list.reduce(min);
        print('A amplitude da lista é: $amplitude');
        break;

      case 'C':
        for (int i = 0; i < tamanhoLista; i++) {
          if (list.elementAt(i) % 2 != 0) {
            impar.add(list.elementAt(i));
          } // adicionar penas impares na lista vazia
        }
        print('');
        print('Lista de impares: $impar');
        impar.sort(); //ordenar maior -> menor
        print('');
        print(
            'Lista de impares Decrescente: ${impar.reversed}'); //ordenar menor -> maior
        break;

      case 'D':
        print('');
        print(list); //listar
        break;

      default:
        {
          if (opcao.toUpperCase() != 'S') {
            print('');
            print(
                'Opção $opcao não é valida, escolha novamente uma letra do menu');
          } //user fail safe
        }
    }
  } while (opcao.toUpperCase() != 'S');
  print('');
  print('Programa terminado com sucesso.');
  print(''); //fim
}
