import 'package:http/http.dart' as http;

class HttpHelper {
  //https://api.openweathermap.org/data/2.5/weather?lat=28.4595&lon=77.0266&appid=e77e558e80f3b53249ddb36c055b14f9
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = 'e77e558e80f3b53249ddb36c055b14f9';

  Future<String> getWeather(String latitude, String longitude) async {
    Map<String, dynamic> parameter = {
      'lat': latitude,
      'lon': longitude,
      'appId': apiKey
    };

    Uri uri = Uri.https(authority, path, parameter);
    http.Response result = await http.get(uri);
    return result.body;
  }
}
