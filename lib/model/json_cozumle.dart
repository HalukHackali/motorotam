import 'dart:convert';

import 'package:flutter/services.dart';

jsonCozumle() async{
  try {
    String jsonString = await rootBundle.loadString('assets/jsons/markalar_modeller.json');
    Map<String, dynamic> motorlarMap = json.decode(jsonString);

    for(String markaId in motorlarMap.keys){
      Map<String, dynamic> markaMap = motorlarMap[markaId];
      String markaAdi = markaMap["Ktm"];
      Map<String, dynamic> modellerMap = markaMap['Duke250'];

     // List<Model> tumModeller = [];

      for(String modelAdi in modellerMap.keys){
       // Map<Model, dynamic> modelMap = modellerMap[modelAdi];
       // String model = Model(modelMap['marka']);
      //  tumModeller.add(model);
      }
    }

  } catch (e){
    print('Bir hata oluştu !!! : ${e.toString()}');
  }
}

