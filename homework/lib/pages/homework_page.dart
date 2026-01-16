import 'package:flutter/material.dart';
import 'package:homework/models/homework/models.dart';
import 'package:homework/network/network_service.dart';
import 'package:homework/widgets/text_view.dart';

class HomeworkPage extends StatefulWidget {
  const HomeworkPage({super.key});

  @override
  State<HomeworkPage> createState() => _HomeworkPageState();
}

class _HomeworkPageState extends State<HomeworkPage> {
  final TextEditingController _latController = TextEditingController.fromValue(
    const TextEditingValue(text: '40.741895'),
  );
  final TextEditingController _lonCotroller = TextEditingController.fromValue(
    const TextEditingValue(text: '-73.989308'),
  );

  Future<WeatherMainResponse>? _future;

  void _getWeather() {
    setState(() {
      final double lat = double.parse(_latController.text);
      final double lon = double.parse(_lonCotroller.text);
      _future = NetworkServiceImp().getWeather(lat: lat, lon: lon);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Домашнее №12', textSize: 20.0),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              crossAxisAlignment: .center,
              mainAxisAlignment: .center,
              children: [
                FutureBuilder(
                  future: _future,
                  builder: (context, asyncSnapshot) {
                    if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }

                    if (asyncSnapshot.hasError) {
                      return TextView(input: asyncSnapshot.error.toString());
                    }

                    WeatherMainResponse? weather;

                    if (asyncSnapshot.hasData) {
                      weather = asyncSnapshot.data;
                      return Column(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .center,
                        children: [
                          TextView(input: weather!.name ?? 'No data'),
                          TextView(input: 'lat: ${weather.coord!.lat}, lon: ${weather.coord!.lon}'),
                          TextView(input: weather.weather![0].description ?? 'No data'),
                          TextView(input: weather.main!.temp.toString()),
                          const SizedBox(height: 20.0),
                        ],
                      );
                    }

                    return const SizedBox();
                  },
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  mainAxisSize: .max,
                  children: [
                    Flexible(
                      child: TextFormField(
                        controller: _latController,
                        style: const TextStyle(color: Colors.black, fontSize: 16.0),
                        decoration: InputDecoration(
                          labelText: 'Lat',
                          labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                          ),
                        ),
                        onTapOutside: ((event) {
                          FocusScope.of(context).unfocus();
                        }),
                      ),
                    ),
                    const SizedBox(width: 25.0),
                    Flexible(
                      child: TextFormField(
                        controller: _lonCotroller,
                        style: const TextStyle(color: Colors.black, fontSize: 16.0),
                        decoration: InputDecoration(
                          labelText: 'Lon',
                          labelStyle: const TextStyle(color: Colors.black, fontSize: 16.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(width: 2.0, color: Colors.grey),
                          ),
                        ),
                        onTapOutside: ((event) {
                          FocusScope.of(context).unfocus();
                        }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: _getWeather,
                    child: const TextView(input: 'Получить прогноз погоды'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
