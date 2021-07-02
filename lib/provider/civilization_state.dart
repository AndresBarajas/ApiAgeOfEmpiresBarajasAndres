import 'package:api_flutter/Model/civilization_model.dart';
import 'package:api_flutter/provider/civilization_provider.dart';
import 'package:get/get.dart';

class CivilizationsState extends GetxController {
  List<CivilizationModel> civilization = [];
  final _civilizationProvider = CivilizationProvider();
  int _pagina = 0;

  Future<void> obtenerCivilizaciones() async {
    final civilizationList = await _civilizationProvider.obtenerCivilizaciones(_pagina);
    civilization.addAll(civilizationList);
    _pagina += 20;
    update();
  }
}