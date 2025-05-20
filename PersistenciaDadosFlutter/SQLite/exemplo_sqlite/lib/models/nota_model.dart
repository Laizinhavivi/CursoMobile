//criar a classe model para notas

class Nota {
  //atributos
  final int? id; //permite criar objeto com id nulo
  final String titulo;
  final String conteudo;
  //construtores
  Nota({
    this.id,
    required this.titulo,
    required this.conteudo,
  }); //construtor com os atributos, required é obrigatório
  //métodos
  //converter dados para o banco de dados
  //   método MAP => converte um objeto da classe Nota para um MAP(Para inserir no banco nde dados)
  //MAP é uma chave associada à um valor
  //map = Lista não ordenada
  Map<String, dynamic> toMap() {
    return {
        "id" : id,
        "titulo": titulo,
        "conteudo": conteudo
    };
  }
  //factory -> converte dados DB para um objeto
  factory Nota.fromMap(Map<String,dynamic> map){
    return Nota(
      id: map["id"] as int,
      titulo: map["titulo"] as String,
      conteudo: map["conteudo"] as String);
  }
  //toString
  @override
  String toString() {
    //Todo: implement to String
    return "Nota{id: $id, Título: $titulo, Conteúdo: $conteudo}";
  }

}
