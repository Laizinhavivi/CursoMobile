import 'package:intl/intl.dart';

class Consulta {
  //atributos -> id, petId, dataHora, tipoServico, observação
  final int? id; //pode ser criado com um valor nulo
  final int petId; //chave estrangeira para o pet
  final DateTime dataHora;
  final String tipoServico;
  final String observacao;

  //construtor
  Consulta({
    this.id,
    required this.petId,
    required this.dataHora,
    required this.tipoServico,
    required this.observacao,
  });
  //métodos de conversão
  // toMap Obj-BD
  Map<String, dynamic> toMap() => {
    "id": id,
    "pet_id": petId,
    "data_hora": dataHora.toIso8601String(),
    "tipo_servico": tipoServico,
    "observacao": observacao,
  };
  //método -> fromMap() : Banco de Dados, para o objeto
  factory Consulta.fromMap(Map<String, dynamic> map) {
    return Consulta(
      id: map["id"] as int,
      petId: map["petId"] as int,
      dataHora: DateTime.parse(map["dataHora"] as String),
      tipoServico: map["tipoServico"] as String,
      observacao: map["observacao"] as String,
    );
  }
  //método para converter : data e hora em formato local ("dd/mm/yyyy HH:mm");
  String get dataHoraLocal {
    final local = DateFormat("dd/MM/yyyy HH:mm");
    return local.format(dataHora);
  }

  @override
  String toString() {
    //TODO: implement toString
    return "Consulta:{id $id, petId: $petId, dataHora: $dataHora, serviço: $tipoServico, observacao: $observacao}";
  }
}
