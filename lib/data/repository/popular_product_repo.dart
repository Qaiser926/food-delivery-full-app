import 'package:food_develry_app/data/api/api_client.dart';
import 'package:get/get.dart';

// repo "api client " see communicat kare ga our is ko internet connnection k zararot ho gi .
// jab internet see data load ho ga to time le ga to.
/// jab internet see data load ho ga to time le ga
/// "GetxService" our internet see data ko load karne k liye "GetxService" is ki zaroart ho gi
class PopularProductRepo extends GetxService {
  /// respositry  me instance ho ga "api client" ka ,, q k "api client " me method he get our post us ko call kare ge
  /// jab first time repositry ko call kare ge. to "api client " pass kare ge.
  ///
  final ApiClient apiClient;

  String url =
      "https://phptravels.net/api/api/main/app?appKey=phptravels&lang=en&currency=usd";
  PopularProductRepo({required this.apiClient});

  /// method banaya type he "future" our request send kare ga "server" ko
  ///
  /// controller ye reponse get kare ga our process kare ga.
  Future<Response> getPopularProductRepoList() async {
    /// yaha par ab ye api client page k method ko call kare ga to waha see reponse aye ga .

    /// ab api ko call kare ge.
    /// yaha par sirf "api client ko call karte he "
    /// repositry  reponsible hota he k o sirf api client ko call kare ga.
    return apiClient.getData('http://mvs.bslmeiyu.com/api/v1/products/popular');
    // return apiClient.getData(url);

    /// once reqest kare ga api client ko jab api client data retrn kare to repositry controller ko data pass kare ga
  }
}
