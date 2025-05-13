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
  Map<String, dynamic> toMap() {
    return {
        "id" : id,
        "titulo": titulo,
        "conteudo": conteudo
    };
  }
  //factory
}
