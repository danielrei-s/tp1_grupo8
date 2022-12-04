import 'dart:io';
import 'package:tp1_grupo8/apolice.dart';
import 'package:tp1_grupo8/seguradoras.dart';
import 'package:tp1_grupo8/tipoSeguro.dart';
import 'package:tp1_grupo8/tomadores.dart';

void main(List<String> arguments) {
  while (true) {
    print("-------------  MENU -------------");
    print("1 - Apólices ativas");
    print("2 - Apólices inativas");
    print("3 - Apólices ativas & valor médio");
    print("4 - Apólices ativas & valor médio por tipo de seguro");
    print("5 - Relatórios Seguradora");
    print("6 - Relatórios Seguradoras por Tipo de seguro");
    print("7 - Total de prémios");
    print("8 - Informações Seguradora");
    print("9 - Informações Tomadores");
    print("10 - Informações Segurados");
    print("11 - Inserir Apolice");
    print("12- Inserir Seguradora");
    print("13- Apagar");
    print("0 - Sair");
    print("---------------------------------");
    print("Opção? »");

    print("\n");

    // lê o input do utilizador
    int contador = 3;
    var seletor = int.parse(stdin.readLineSync()!);

    switch (seletor) {
      case 1:
        int apativos = apolices
            .where((e) => e.ativo == true)
            .length; //devolve int da quantidade ativa
        print("Existem $apativos apolices ativas");
        break;

      case 2:
        int apNativos = apolices
            .where((e) => e.ativo == false)
            .length; //devolve int da quantidade inativa
        print("Existem $apNativos apolices ativas");
        break;

      case 3:
        double total = 0;
        int count = 0;
        double media = 0;
        apolices
            .where((e) => e.ativo == true) //Dentro das apolices ativas..
            .forEach((e) => {
                  total += e.valorSegurado,
                  count++
                }); //.. para cada, acumular cobertura em total e dividir pelo n de ocorrencias
        media = total / count;
        print("Valor médio de cada segurado é = $media€ ($count apólices).");
        print('');
        break;

      case 4:
        print("\n »»Tipo de seguro««");
        print("1 - Imobiliário \n2 - Automóvel");
        print("0 - Sair");
        print("");

        var read = stdin.readLineSync()!;
        var seletor = int.parse(read);
        double total = 0.0;
        double media = 0.0;
        int count = 0;

        switch (seletor) {
          case 1:
            apolices
                .where((e) =>
                    e.ativo == true &&
                    e.tipoSeguro.name ==
                        "imobiliario") // Dentros das ativas do tipo imoboliario..
                .forEach((e) => {
                      total += e.valorSegurado,
                      count++,
                      media = total / count
                    }); //.. para cada, acumular corbertura em total e dividir pelas ocorrencias
            print("A média dos seguros em Imobiliario é: $media €\n");
            if (total < 1) {
              //Não existem seguros com valor de 0 ou negativos por isso o total é sempre superior a 0, provando que existe
              print("Não existem apolices ativas para esse tipo de seguro\n");
            }
            break;

          case 2:
            apolices
                .where((e) =>
                    e.ativo == true &&
                    e.tipoSeguro.name ==
                        "automovel") // Dentros das ativas do tipo auto..
                .forEach((e) => {
                      total += e.valorSegurado,
                      count++,
                      media = total / count
                    }); //.. para cada, acumular corbertura em total e dividir pelas ocorrencias
            print("A média dos seguros em Automovel é: $media €\n");
            if (total < 1) {
              //Não existem seguros com valor de 0 ou negativos por isso o total é sempre superior a 0, provando que existe
              print("Não existem apolices ativas para esse tipo de seguro\n");
            }
            break;

          case 0:
            break;
        }
        break;

      case 5:
        List<String> temp = []; //lista temporaria
        apolices.where((e) => e.ativo == true).forEach((e) => {
              if (temp.contains(e.seguradora) == false)
                {
                  temp.add(e.seguradora)
                } // Para a quantidade de apolicies ativas se temp[] não contem essa seguradora,
            }); // adicionar essa seguradora a temp
        print('');
        print("\n»» Digitar Seguradoras ««\n");

        temp.forEach((e) {
          //display dos elementos de temp[]
          print("» $e");
        });
        print("0 - Sair\n");
        print("");
        var read = stdin.readLineSync()!;
        if (read == "0") {
          break;
        }

        double totalP = 0.0;

        print("\nRelatório para seguradora selecionada:\n");
        apolices
            .where((e) =>
                e.ativo == true &&
                e.seguradora.toUpperCase() ==
                    read.toUpperCase()) //user fail-safe
            .forEach((e) => {
                  print(
                      ''' Nome: ${e.nomeTomador}\n Seguro: ${e.tipoSeguro.name}\n Prémio: ${e.premio} €\n'''),
                  totalP += e.premio,
                });
        print("Valor total em prémios: $totalP €.\n");
        break;

      case 6:
        print("\n»»Selecione o tipo de seguro««");
        print("1- Imobiliário \n2- Automóvel");
        print("0 - Sair\n\n");

        var read = stdin.readLineSync()!;
        var seletor = int.parse(read);

        double totalP = 0.0;

        switch (seletor) {
          case 1:
            print("\nRelatório em Imobiliário:\n");
            apolices
                .where((e) =>
                    e.ativo == true && e.tipoSeguro.name == "imobiliario")
                .forEach((e) => {
                      print(
                          ''' Nome: ${e.nomeTomador}\n Nome da Seguradora: ${e.seguradora}\n Prémio: ${e.premio} €\n'''),
                      totalP += e.premio,
                    });
            print("Total para o tipo de seguro Imobiliário é = $totalP €\n");
            break;

          case 2:
            print("\nRelatório em Automóvel:\n");
            apolices
                .where(
                    (e) => e.ativo == true && e.tipoSeguro.name == "automovel")
                .forEach((e) => {
                      print(
                          ''' Nome: ${e.nomeTomador}\n Nome da Seguradora: ${e.seguradora}\n Prémio anual: ${e.premio} €\n'''),
                      totalP += e.premio,
                    });
            print("Total para o tipo de seguro Auto é: $totalP €\n");
            break;

          case 0:
            break;
        }

        break;
      case 7:
        double totalP = 0.0;

        apolices.where((e) => e.ativo == true).forEach((e) {
          totalP += e.premio;
        });
        print(
            "Total da soma de todos os prémios cujas apólices estão ativas = $totalP €\n");
        break;
      case 8:
        print("\n»»Informações de seguradoras««\n");
        print("");
        print(seguradoras.toString());
        break;

      case 9:
        print("\n»»Informações Tomadores««\n");

        tomadores.forEach((e) => {print(e)});

        break;

      case 10:
        print("\n »»Segurados«« \n");

        apolices.forEach((e) {
          print(
              ''' Tomador : ${e.nomeTomador}\n Seguradora : ${e.seguradora}\n Tipo de Seguro : ${e.tipoSeguro.name}\n Ativo: ${e.ativo}\n\n''');
        });
        break;

      case 11:
        print("»»Apolice««");
        print("Insira o nome do Tomador");
        String nome = stdin.readLineSync()!;
        print("Insira o nome da Seguradora");
        String nomeSeguradora = stdin.readLineSync()!;

        print("\n»» Tipo de seguro? ««\n");
        print("1- Imobiliario\n2- Automóvel");

        var read = stdin.readLineSync()!;
        var seletor = int.parse(read);
        TipoSeguro tipoSeguro = TipoSeguro.automovel;

        switch (seletor) {
          case 1:
            tipoSeguro = TipoSeguro.imobiliario;
            break;

          case 2:
            tipoSeguro = TipoSeguro.automovel;
            break;

          default:
            print("Erro, deve selecionar elemento da lista");
            break;
        }

        print("Insira o valor da Cobertura");
        double valorSegurado = double.parse(stdin.readLineSync()!);
        print("Insira o valor Anual (prémio)");
        double premio = double.parse(stdin.readLineSync()!);
        contador++; // aumenta o contador que funcionará como ID
        apolices.add(Apolice(contador, nomeSeguradora, nome, tipoSeguro,
            valorSegurado, premio, true));
        print("Apolice inserida com sucesso! \n");
        break;

      case 12:
        print("Insira o nome da Seguradora:");
        String nome = stdin.readLineSync()!;
        if (seguradoras.any((e) => e.nome == nome)) {
          print("Seguradora já registada, tente novamente.");
        } else {
          print("Inserir o contacto");
          int contacto = int.parse(stdin.readLineSync()!);
          seguradoras.add(Seguradoras(
              (seguradoras[seguradoras.length - 1].id + 1),
              nome,
              contacto)); //Contrariamente as apolices que nunca se repetem, uma seguradora pode ser eliminada
        } // e voltar a adicionar noutro ano, como tal não fizemos ID unico, mas sim conforme o total existente
        print("Seguradora inserida com sucesso! \n");
        break;

      case 13:
        print("Insira o nome da seguradora que quer apagar");

        String deleteSeguradora = stdin
            .readLineSync()!; //Como não há seguradoras com nome igual, o delete é com base no nome e não no ID

        if (apolices
            .any((e) => e.seguradora == deleteSeguradora && e.ativo == true)) {
          //Não permite eliminar com apolices ativas
          print(
              "A seguradora : $deleteSeguradora tem apolices ativas! Deve cancelar antes de eliminar");
        } else {
          seguradoras.removeWhere((e) => e.nome == deleteSeguradora);
          print("Seguradora removida com sucesso!\n");
        }
        break;

      case 0:
        print('');
        print('Programa terminado com sucesso.');
        print(''); //fim
        exit(0);
    }
  }
}
