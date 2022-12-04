import 'tipoSeguro.dart';

class Tomadores {
  String? nome;
  String? morada;
  int? idade;
  String? nomeSegurado;
  TipoSeguro tipoSeguro;

  Tomadores(this.nome, this.morada, this.idade, this.nomeSegurado,
      this.tipoSeguro); //construtoor
  @override
  String toString() => '''Nome: $nome
      Morada: $morada
      Idade: $idade
      Nome segurado: $nomeSegurado
      Tipo seguro: $tipoSeguro
      ''';
}

List<Tomadores> tomadores = [
  Tomadores(
    "Joao Luis",
    "Rua Cima",
    22,
    "Renault_37-86-QT",
    TipoSeguro.automovel,
  ),
  Tomadores(
    "Luis Quinas",
    "Rua da Rasa",
    22,
    "T4 da Rasa",
    TipoSeguro.imobiliario,
  ),
];
