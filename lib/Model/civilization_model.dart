import 'package:api_flutter/Model/civilizations_model.dart';

class CivilizationModel {
  int? id;
  String? name;
  String? expansion;
  String? army_type;
  String? team_bonus;

  CivilizationModel({
    this.id,
    this.name,
    this.expansion,
    this.army_type,
    this.team_bonus,
   });
  factory CivilizationModel.fromJsonMap(Map<String, dynamic>data)=>
  CivilizationModel(
    id: data['id'],
    name: data['name'],
    expansion: data ['expansion'],
    army_type: data['army_type'],
    team_bonus: data['team_bonus'],
);

 

}


