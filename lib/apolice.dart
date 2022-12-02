import 'pessoa.dart';

class Apolice extends Pessoa {
  int idApolice;
  String tipo;
  double valorSegurado;
  double premio;
  bool ativo;
  String seguradora;

  Apolice(
      super.id,
      super.nome,
      super.idade,
      super.morada,
      super.tomador,
      super.segurado,
      this.idApolice,
      this.tipo,
      this.valorSegurado,
      this.premio,
      this.ativo,
      this.seguradora);

  @override
  String toString() {
    return 'Apolice número: $idApolice. /n ...d'; //TODO
  }
}
