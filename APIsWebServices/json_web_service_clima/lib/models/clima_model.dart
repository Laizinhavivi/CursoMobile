// Model -> Modelagem de Dados -> Classes dos objetos modelavéis em um banco de dados
class ClimaModel {
  final String cidade;
  final double temperatura;
  final String descricao;

  //construtor
  ClimaModel({
    required this.cidade,
    required this.temperatura,
    required this.descricao,
  });

  //fromMap -> to Map
  factory ClimaModel.fromJson(Map<String, dynamic>Json){
    return ClimaModel(
      cidade: Json["name"],
      temperatura: Json["main"]["temp"].toDouble(),
      descricao: Json["weather"][0]["descripition"]);
  }
}





//https://api.openweathermap.org/data/2.5/weather?q=limeira&appid=90290436d34bb91b4d852afe49197129&lang=pt_br&units=metric
