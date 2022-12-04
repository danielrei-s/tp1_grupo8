import 'tipoSeguro.dart';

class Apolice {
  int id;
  String seguradora;
  String nomeTomador;
  TipoSeguro tipoSeguro;
  double valorSegurado;
  double premio;
  bool ativo;

  Apolice(
    this.id,
    this.seguradora,
    this.nomeTomador,
    this.tipoSeguro,
    this.valorSegurado,
    this.premio,
    this.ativo,
  );
  @override
  String toString() => '''Nome Cliente: $nomeTomador
      Nome Seguradora: $seguradora
      Tipo de Seguro: $tipoSeguro
      Cobertura: $valorSegurado
      Premio Anual: $premio
      Ativo: $ativo''';
}

List<Apolice> apolices = [
  Apolice(
    1,
    "Aliance",
    "DanielReis",
    TipoSeguro.automovel,
    1000,
    100,
    true,
  ),
  Apolice(
    2,
    "Cofidis",
    "LuisOlival",
    TipoSeguro.imobiliario,
    100000,
    1000,
    true,
  ),
];
