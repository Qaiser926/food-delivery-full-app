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
    baseUrl =
        appBaseUrl; // ye baseurl "getconnect" package see araha he us ko pata he k "baseurl" kia he "to yaha par "baseurl" me appbaseurl pass kare ge/"
    timeout = Duration(
        seconds:
            30); // yaha par kitna time lage k request karte wakt ye define kia he

    // is mainheader "map " ko contructor k ander initialize kare ge
    _mainHeader = {
      // ye niche line jab hum request send karte he to server ko request jata he k
      // get request aya he to oo dekta he o k kia request he . jab dekta he k get request he to o. jab fail ho ga to stop kare ga
      // json data ko sned karta he .

// server ko header k bare me pata he /

      /// is tara jab post request jata he server ko to o check karta he our
      /// data post karta json formate me
      /// {charset=UTF-8} use for decode and endcode but optional
      "Content-type": "application/json; charset=UTF-8",
      // jab hum post request send karte he server ko to us k sat ak tokne generate ho
      // kar jata server ko device see (token type is bearer) (bearer is used for authentication )
      'Authorization': 'Bearer $token'
    };
  }
  Future<Response> getData(String uri) async {
    try {
      var response = get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
