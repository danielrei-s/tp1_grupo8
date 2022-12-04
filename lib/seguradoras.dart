class Seguradoras {
  int id;
  String nome;
  int contacto;

  Seguradoras(
    this.id,
    this.nome,
    this.contacto,
  );
  @override
  String toString() => "Nome: $nome | Contacto: $contacto | ID: $id\n";
}

List<Seguradoras> seguradoras = [
  Seguradoras(0, 'Aliance', 223708080),
  Seguradoras(1, 'OKteleseguros', 223701010),
];
