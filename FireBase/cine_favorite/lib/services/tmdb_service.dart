//meu servicço de conexão com APi TMDB

import 'dart:convert';

import 'package:http/http.dart' as http;

class TmdbService {
  //colocar os dados da API
  static const String _apiKey = "1fa5c2d59029fd1c438cc35713720604";
  static const String _baseURL = "https://api.themoviedb.org/3";
  static const String _idioma = "pt-BR";
  //static => atributos da classe e não do OBJ

  //método static => métodos da Classe -> não preciso instanciar um OBJ para executar o método

  //buscar filme na API
  static Future<List<Map<String,dynamic>>> searchMovie(String movie) async{
    //converter a String em URL
    final apiURI = Uri.parse("$_baseURL/search/movie?api_key=$_apiKey&query=$movie&language=$_idioma");
  //http.get (request Http ->get) 
  final response = await http.get(apiURI);

  //verificar a resposta
  if(response.statusCode == 200){
    //converter resultado json em dart
    final data = json.decode(response.body);
    //transforma data em list
    return List<Map<String, dynamic>>.from(data["results"]);
  }else{
    //caso contrario criar uma exception
    throw Exception("Falho ao Carregar Filmes de API");
  }
  }
}

//metodos para buscar filmes para o id