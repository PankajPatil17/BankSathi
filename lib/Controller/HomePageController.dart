import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:bank_sathi/Controller/SignUpController.dart';
import 'package:bank_sathi/Generic/Constant/variables.dart';

class HomePageController extends GetxController {
  List networkhospitalimages = [].obs;
  List activepackages = [].obs;
  List teleconsultation = [].obs;
  List symptoms = [].obs;
  List cityList = [];
  var videos;
  List packagesListDetails = [].obs;
  List packagesList = [].obs;
  List CheckPackageaval = [];
  var callFunctionmessage;
  var SignUpcontroller = Get.put(SignUpController());
  var notificationCount;
  List blogs = [].obs;
  List blogsdetail = [].obs;
  List onboardingimages = [].obs;
  var Usermobilenumber;

  List BannerImages = [
    'assets/Images/First_banner.png',
    'assets/Images/Second_banner.png',
  ].obs;

  Activepackages() async {
    http.Response response =
        await http.get(Uri.parse('${BASE_URL}api/home_index/index'), headers: {
      "Authorization": SignUpcontroller.currentUserToken,
    });
    var decodedResponse = json.decode(response.body);
    packagesList = decodedResponse['my_package']['packages'];
  }

  ActivepackagesDetails({id}) async {
    http.Response response = await http.get(
        Uri.parse(
            '${BASE_URL}api/home_index/getPackageDetails?package_id=${id}'),
        headers: {
          "Authorization": SignUpcontroller.currentUserToken,
        });
    var decodedResponse = json.decode(response.body);
    packagesListDetails = decodedResponse['data']['data'];
  }

  // BlogArticles() async {
  //   http.Response response = await http.post(
  //       Uri.parse('${BASE_URL}api/home_index/health_feed_blog'),
  //       headers: {
  //         "Authorization": SignUpcontroller.currentUserToken,
  //       },
  //       body: {});

  //   var decodedResponse = json.decode(response.body);
  //   blogs = decodedResponse['health_feed'];
  // }

  // BlogArticlesDetails(id) async {
  //   http.Response response = await http.post(
  //       Uri.parse('${BASE_URL}api/home_index/health_feed_blog'),
  //       headers: {
  //         "Authorization": SignUpcontroller.currentUserToken,
  //       },
  //       body: {
  //         "id": id.toString()
  //       });

  //   var decodedResponse = json.decode(response.body);
  //   blogsdetail = decodedResponse['health_feed'];
  // }
}
