import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  var url;

  Future getData() async {

    var urlData = Uri.parse(url);

    http.Response response = await http.get(urlData);

    if(response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    }else {
      print('Response is ${response.statusCode}');
    }
  }


}