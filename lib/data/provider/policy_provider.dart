import 'dart:convert';

import 'package:flutter_interview_test/data/api_response.dart';
import 'package:flutter_interview_test/data/model/policy.dart';

class PolicyProvider {

  static Future<ApiResponse<Policies>> getPolicies() async {

    String jsonData = '''
  [
    {
    "policity_number" : 1,
    "title": "auto",
    "subtitle": "Land Rover Range Rover Evoque 2.0 SI4 R-Dynamic SE 4WD 2020 (Gasolina / Flex)",
    "type" : "YOU-0000",
    "image_url": "https://cdn.youse.com.br/app/images/products/auto.png"
    },
    {
    "policity_number" : 2,
    "title": "SP",
    "subtitle" : "Av Brigadeiro Faria Lima",
    "type" : "YOU-0000",
    "image_url": "https://cdn.youse.com.br/app/images/products/home.png"
    },
    {
    "policity_number" : 3,
    "title": "JOHN",
    "subtitle" : "30 anos",
    "type" : "life",
    "image_url": "https://cdn.youse.com.br/app/images/products/life.png"
    },
    {
    "policity_number" : 1,
    "title": "auto",
    "subtitle": "Land Rover Range Rover Evoque 2.0 SI4 R-Dynamic SE 4WD 2020 (Gasolina / Flex)",
    "type" : "YOU-0000",
    "image_url": "https://cdn.youse.com.br/app/images/products/auto.png"
    },
    {
    "policity_number" : 2,
    "title": "SP",
    "subtitle" : "Av Brigadeiro Faria Lima",
    "type" : "YOU-0000",
    "image_url": "https://cdn.youse.com.br/app/images/products/home.png"
    },
    {
    "policity_number" : 3,
    "title": "JOHN",
    "subtitle" : "30 anos",
    "type" : "life",
    "image_url": "https://cdn.youse.com.br/app/images/products/life.png"
    }
  ]
  ''';

    try {
      var parsedJson = jsonDecode(jsonData);

      Policies listPolicies = Policies.fromJson(parsedJson);
      //throw('error'); //TESTE
      return ApiResponse.ok(result: listPolicies);
    } catch (error) {
      print(error);
      return ApiResponse.error(msg: 'Não foi possível obter as polícias');
    }
  }
}
