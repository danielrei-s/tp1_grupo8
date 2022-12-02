// Surpresas Existem
import 'dart:html';
import 'dart:io' show stdin;
import 'dart:core';

import 'package:tp1_grupo8/apolice.dart';

void main(List<String> args) {
  String opcao, captura, captura2, captura6, captura10; //escolha de menu
  int contadorapolices = 11;
  int contadorclientes = 11;
  double captura7, captura8;
  int captura1, captura5;
  bool captura3, captura4, captura9;

  //recolher inputs
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
    List apolices = [];
    switch (opcao.toUpperCase()) {
      //user fail safe
      case 'A':
        print('');
        print("Novo cliente? (S/N)");
        captura = stdin.readLineSync()!;
        if (captura == 'S') {
          print(
              "Por favor selecione abra ficha de cliente antes de criar apolice.");
          print('');
          break;
        } else {
          contadorapolices++;
          print("Gerado novo número de apolice: $contadorapolices");
          print("Criada nova Apolice, indique nome: ");
          captura = stdin.readLineSync()!;
          print("Criada nova Apolice, indique nome: ");
          captura1 = stdin.readLineSync()! as int;
          print("Criada nova Apolice, indique nome: ");
          captura2 = stdin.readLineSync()!;
          print("Criada nova Apolice, indique nome: ");
          captura3 = stdin.readLineSync()! as bool;
          print("Criada nova Apolice, indique nome: ");
          captura4 = stdin.readLineSync()! as bool;
          print("Criada nova Apolice, indique nome: ");
          captura5 = stdin.readLineSync()! as int;
          print("Criada nova Apolice, indique nome: ");
          captura6 = stdin.readLineSync()!;
          print("Criada nova Apolice, indique nome: ");
          captura7 = stdin.readLineSync()! as double;
          print("Criada nova Apolice, indique nome: ");
          captura8 = stdin.readLineSync()! as double;
          print("Criada nova Apolice, indique nome: ");
          captura9 = stdin.readLineSync()! as bool;
          print("Criada nova Apolice, indique nome da seguradora: ");
          captura10 = stdin.readLineSync()!;

          apolices.add(Apolice(
              id: contadorapolices,
              nome: captura,
              idade: captura1,
              morada: captura2,
              tomador: captura3,
              segurado: captura4,
              idApolice: captura5,
              tipo: captura6,
              valorSegurado: captura7,
              premio: captura8,
              ativo: captura9,
              seguradora: captura10));

          print(apolices);

          break;
        }

      case 'B':
        //amplitude = maior valor subtraido do menor num conj de dados

        break;

      case 'C':
        break;

      case 'D':
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
