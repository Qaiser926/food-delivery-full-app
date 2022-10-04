import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  // late keyword is initialize when it used then it initialize
  late String token;
  final String appBaseUrl;
  // late is  liye use karte he jab tak use nhe kare to initialize nhe ho ga.
  late Map<String, String>
      _mainHeader; // what is map "map is storing data locally"
  /// ab niche constructor banaya
  ApiClient({required this.appBaseUrl}) {
    /// ye constructor body ho giya
    /// jab pehli bar get initialize ho ga to api client me "baseurl" initialize ho ga.
    baseUrl =
        appBaseUrl; // ye baseurl "getconnect" package see araha he us ko pata he k "baseurl" kia he "to yaha par "baseurl" me appbaseurl pass kare ge/"
    timeout = Duration(
        seconds:
            30); // yaha par kitna time lage k request karte wakt ye define kia he

    // is mainheader "map " ko contructor k ander initialize kare ge
    /// header hum "api client" me q use karte he , q k "api client" server see communicat karta he to
    /// header ki zarorat hoti he
    /// jab "api client " server see communicat kare ga to o header ko mention zaror kare ga . our header k ander " url " ko
    ///
    _mainHeader = {
      // ye niche line jab hum request send karte he to server ko request jata he k
      // get request aya he to oo dekta he o k kia request he . jab dekta he k get request he to o. jab fail ho ga to stop kare ga
      // json data ko sned karta he .

// server ko header k bare me pata he /

      /// "application/json;" ye get request he jab server ko request karte he . agr request json ka ho .
      /// "application/json;" ye post k liye b use karte he "server" ko pata hota he k ye request "api client" see araha he json formate me
      /// "charset=UTF-8" ye decoding our ending section he our "optional he ".
      "Content-type": "application/json; charset=UTF-8",

      /// agar 'post' request karte he server ko device see to "token" send hota he device see server ko
      /// "Bearer" token type he . "Bearer " ye authorization k liye use karte he
      'Authorization': 'Bearer $token'
    };
  }
  // getdata method banaya.
  /// type future our ye reponse getx package se araha he .
  /// http client data get karta he server seee.
  /// our getx reponse return karta he hame .now  reponse is data
  Future<Response> getData(String uri) async {
    /// type is future return jab data
    try {
      /// get request kare ge.our ye data response me store kare ge.
      /// to is response ko return kar diya
      /// get() pehle "baseurl" ko find kare ga
      var response = get(uri);
      return response;
    } catch (e) {
      /// agr problem a giya to ye call ho ga .
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
