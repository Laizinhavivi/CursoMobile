// classe 

class Movie {
    // atributos 
    final int id; //Id to tmdb
    final String title; // titulo o filme 
    final String posterPath; //Caminho para a imagem do Poster
    double rating; // nota que o usuário dará ao filme 

        // Construtor 
    Movie({
        required this.id,
        required this.title,
        required this.posterPath,
        this.rating = 0
    });

// métodos de conversão do objeto <-> json

//toMap OBJ -> json
Map <String,dynamic> toMap(){
    return{
        "id": id,
        "title": title,
        "posterPath":posterPath,
        "rating": rating
    };
}

//fromMap -> factory json -> objeto
factory Movie.fromMap(Map<String,dynamic> map){
    return Movie(
        id: map["id"],
        title: map["title"],
        posterPath: map["posterPath"],
        rating: (map["rating"] as num).toDouble());
}

}



