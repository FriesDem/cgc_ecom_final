import 'package:http/http.dart' as http;
import 'package:cgc_ecom_final/const.dart';


class RemoteBannerService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/banners';

  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse('$remoteUrl?populate=image')
    );
    return response;
  }
}

