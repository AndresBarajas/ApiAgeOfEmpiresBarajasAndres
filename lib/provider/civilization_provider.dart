import 'package:api_flutter/Model/civilization_model.dart';
import 'package:dio/dio.dart';


class CivilizationProvider {
  final _url = 'https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations';
  final _http = Dio();

  Future<List<CivilizationModel>> obtenerCivilizaciones(int pagina) async {
    List<CivilizationModel> _civilizations = [];
    final response = await _http.get(_url,queryParameters:{'offset':pagina} );
    List<dynamic> data = response.data['results'];
    for (int i = 0; i < data.length; i++) {
      final responseCivilization = await _http.get(data[i]['url']);
      _civilizations.add(CivilizationModel.fromJsonMap(responseCivilization.data));
    }

    return _civilizations;
  }
}