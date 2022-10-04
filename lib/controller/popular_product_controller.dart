import 'package:food_develry_app/data/repository/popular_product_repo.dart';
import 'package:food_develry_app/model/popular_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  /// yaha repositry ko initialize kia he . q k ye sab dependant he
  late PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  /// our is k bad ak list create kia type he list ka "dynamic" our initialize kia null (list)
  /// is list ko q create kia . q k hum repositry ko clal kare our waha see data is me store kare ge. is list me
  /// our data ko is list me set kare ge.
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  /// "_popularProductList" is ko dirct call nhe kar sakte private he
  ///
  // ab ak method banaya "future type" ka . our
  Future<void> getPopularProductList() async {
    /// ab repositry ke method ko call kia .
    ///  repositry see response data ko get kare ge.
    /// ab repo repsonse ko response veriable me store kar diya
    Response response = await popularProductRepo.getPopularProductRepoList();
    // agr reponse statuscode 200 he to tik he . to "api client" ka try method call ho ga our data get ho ga
    // otherwise "ali client " ka catch method call ho ga.
    if (response.statusCode == 200) {
      /// "_popularProductList" is ko is liye initialize kia q k hum nhe chahte k data repeat ho .
      ///
      print('got Data Qaiser khan');
      print(response.body);
      _popularProductList =
          []; // agar list success ho giya to is list ko anywhere use kare sakte he ui me

      /// "_popularProductList" is me data ko put kare ge .
      /// hum model create kare our model response get kare ga. do remember jo response server see araha he o json is part of the data and the data is json formate.
      /// to hum json form data ko model me convert kare ge.
      ///  now yaha par reponse body add kia
      /// lkn hum asa nhe chahte body pass nhe kare .is me bahot list he .  to data ko list of object me convert kare ge
      // _popularProductList.addAll(response.body);

      ///
      ///
      /// "addAll" ye list of object leta he ."product" is k zarye baki data ko call kare ge
      /// "Product.fromJson" ye method data ko list me convert karta he .
      _popularProductList.addAll(Product.fromJson(response.body).product);
      update(); // ye setstate ki tara kam karta he data ko update kartahe .

      print('got product');
      print(_popularProductList);
    } else {}
  }
}
