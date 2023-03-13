import 'package:first_app/model/http_helper.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Screen'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: getData, child: Text('Get Weather Data')),
          Text(result)
        ],
      ),
    );
  }

  Future getData() async {
    HttpHelper httpHelper = HttpHelper();
    result = await httpHelper.getWeather('28.4595', '77.0266');
    setState(() {
      result;
    });
  }
}
