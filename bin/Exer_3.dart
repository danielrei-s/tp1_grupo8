// Surpresas Existem
import 'dart:io' show stdin;

void main(List<String> args) {
  String opcao; //escolha de menu

  do {
    print(' ');
    print('<<< SURPRESAS EXISTEM - Gestor de Apolices >>>');

    print("-------------  MENU -------------");
    print("A - Adicionar novo Apolice");
    print("A - Adicionar novo Cliente");
    print("A - Listar Cliente ou Apolices");
    print("B - Atualizar lista de Clientes");
    print("C - Atualizar lista de Apolices");
    print("E - Atualizar lista de Apolices");
    print("C - Relatórios");
    print("D - Opções avançadas");
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
