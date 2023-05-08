import 'package:cgc_ecom_final/const.dart';
import 'package:http/http.dart' as http;

class RemoteProductService {
  var client = http.Client();
  var remoteUrl = '$baseUrl/api/products';

  Future<dynamic> get() async {
    var response = await client.get(
      Uri.parse('$remoteUrl/?populate=ProImages,tags')
    );

    return response;
  }
}