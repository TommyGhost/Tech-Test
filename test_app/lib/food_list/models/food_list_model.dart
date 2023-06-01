// To parse this JSON data, do
//
//     final foodModel = foodModelFromJson(jsonString);

import 'dart:convert';

List<FoodModel> foodModelFromJson(String str) => List<FoodModel>.from(json.decode(str).map((x) => FoodModel.fromJson(x)));

String foodModelToJson(List<FoodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FoodModel {
    String calories;
    String carbos;
    String description;
    int difficulty;
    String fats;
    String headline;
    String id;
    String image;
    String name;
    String proteins;
    String thumb;
    String time;
    String? country;

    FoodModel({
        required this.calories,
        required this.carbos,
        required this.description,
        required this.difficulty,
        required this.fats,
        required this.headline,
        required this.id,
        required this.image,
        required this.name,
        required this.proteins,
        required this.thumb,
        required this.time,
        this.country,
    });

    factory FoodModel.fromJson(Map<String, dynamic> json) => FoodModel(
        calories: json["calories"],
        carbos: json["carbos"],
        description: json["description"],
        difficulty: json["difficulty"],
        fats: json["fats"],
        headline: json["headline"],
        id: json["id"],
        image: json["image"],
        name: json["name"],
        proteins: json["proteins"],
        thumb: json["thumb"],
        time: json["time"],
        country: json["country"],
    );

    Map<String, dynamic> toJson() => {
        "calories": calories,
        "carbos": carbos,
        "description": description,
        "difficulty": difficulty,
        "fats": fats,
        "headline": headline,
        "id": id,
        "image": image,
        "name": name,
        "proteins": proteins,
        "thumb": thumb,
        "time": time,
        "country": country,
    };
}
