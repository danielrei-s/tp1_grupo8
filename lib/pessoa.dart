abstract class Pessoa {
  int id;
  String nome;
  int idade;
  String morada;
  bool tomador;
  bool segurado;

  Pessoa(
    this.id,
    this.nome,
    this.idade,
    this.morada,
    this.tomador,
    this.segurado,
  );

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
