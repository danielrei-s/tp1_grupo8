class Pessoa {
  final int id;
  final String nome;
  final int idade;
  final String morada;
  final bool tomador;
  final bool segurado;

  const Pessoa({
    required this.id,
    required this.nome,
    required this.idade,
    required this.morada,
    required this.tomador,
    required this.segurado,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'Nome: $nome. /n ...d';
  }
}
