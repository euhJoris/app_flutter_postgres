// import 'package:/http/http.dart' as http;
import 'package:http/http.dart' as http;

const String baseUrl = "localhost:3000";

class BaseClient {
  var client = http.Client();

  Future<dynamic> get (String api) async{
    print("get Start");
    try {
      var url = Uri.http(baseUrl, api);
      // var _headers = {
      //   'Aut'
      // }
      print("Url:   " + url.toString());
      var response = await client.get(url);
      
      if (response.statusCode == 200){
        return response.body;
      }else {
        return null;
      }
    } on Exception catch (e) {
      print(e);
    }
    print("get End");
  }

  Future<dynamic> post (String api) async{}

  Future<dynamic> put (String api) async{}

  Future<dynamic> delete (String api) async{}
}