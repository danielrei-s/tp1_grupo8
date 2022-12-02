import 'pessoa.dart';

class Apolice extends Pessoa {
  final int idApolice;
  final String tipo;
  final double valorSegurado;
  final double premio;
  final bool ativo;
  final String seguradora;

  const Apolice(
      {required super.id,
      required super.nome,
      required super.idade,
      required super.morada,
      required super.tomador,
      required super.segurado,
      required this.idApolice,
      required this.tipo,
      required this.valorSegurado,
      required this.premio,
      required this.ativo,
      required this.seguradora});

  @override
  String toString() {
    return 'Apolice número: $idApolice. /n ...d'; //TODO
  }
}
