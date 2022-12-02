// Surpresas Existem
import 'dart:io' show stdin;

void main(List<String> args) {
  String opcao; //escolha de menu

  do {
    print(' ');
    print('<<< SURPRESAS EXISTEM - Gestor de Apolices >>>');

    print("-------------  MENU -------------");
    print("A - Adicionar nova Apolice");
    print("B - Adicionar novo Cliente");
    print("C - Listar Cliente & Apolices");
    print("D - Atualizar Cliente");
    print("E - Atualizar Apolice");
    print("F - Apagar Cliente");
    print("G - Apagar Apolice");
    print("D - Opções avançadas");
    print("S - Sair");
    print("Opção? ");
    opcao = stdin.readLineSync()!; //ler user input

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
