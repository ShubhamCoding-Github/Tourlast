
import 'package:Tourlast/backend/models/airport_search_model.dart';
import 'package:get/get.dart';

import '../backend/services/api_end_point.dart';
import '../backend/services/base_api.dart';

class FlightSearchController extends GetxController{
  RxList<Items> pList=<Items>[].obs;
  getFlightSearch(search)async{
    Map<String,dynamic> data = {
      "search":search,
      "type":"arrival",
      "start":0,
      "per_page":100,
    };
    await BaseAPI().get(url:ApiEndPoints().airportSearch,queryParameters: data).then((value){
      if(value?.statusCode==200){
        print('value----$value');
       AirportSearchModel model  = AirportSearchModel.fromJson(value?.data);
        pList.value=model.data?.items??[];
        print('plist-------$pList');

      }
    });
  }
}
