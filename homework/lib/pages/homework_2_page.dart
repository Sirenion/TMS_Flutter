import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homework/homework2/network_service.dart';
import 'package:homework/homework2/weather_bloc.dart';
import 'package:provider/provider.dart';

class Homework2Page extends StatefulWidget {
  const Homework2Page({super.key});

  @override
  State<Homework2Page> createState() => _Homework2PageState();
}

class _Homework2PageState extends State<Homework2Page> {
  final _cityController = TextEditingController();

  void showSnackBarMessage(String message) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: const Text('Домашнее №2'), centerTitle: true),
            body: SafeArea(
              child: Padding(
                padding: const .all(15.0),
                child: Column(
                  mainAxisAlignment: .spaceEvenly,
                  mainAxisSize: .max,
                  children: [
                    BlocBuilder<WeatherBloc, WeatherState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return const CircularProgressIndicator();
                        }

                        if (state.errorText != null) {
                          showSnackBarMessage(state.errorText.toString());
                          return const SizedBox();
                        }

                        if (state.weather != null) {
                          final weather = state.weather;
                          return Column(
                            mainAxisAlignment: .center,
                            crossAxisAlignment: .center,
                            children: [
                              Text(weather!.name ?? 'No data'),
                              Text('lat: ${weather.coord!.lat}, lon: ${weather.coord!.lon}'),
                              Text(weather.weather![0].description ?? 'No data'),
                              Text('Температура: ${weather.main!.temp.toString()}'),
                              Text('Ощущается как: ${weather.main!.feelsLike.toString()}'),
                            ],
                          );
                        }

                        return const SizedBox();
                      },
                    ),
                    Column(
                      children: [
                        TextField(
                          controller: _cityController,
                          onTapOutside: ((event) {
                            FocusScope.of(context).unfocus();
                          }),
                          decoration: InputDecoration(
                            labelText: 'Город',
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
                        ),
                        const SizedBox(height: 5.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {
                              final networkProvider = Provider.of<NetworkService>(
                                context,
                                listen: false,
                              );
                              context.read<WeatherBloc>().add(
                                GetWeather(
                                  networkService: networkProvider,
                                  city: _cityController.text,
                                ),
                              );
                            },
                            child: const Text(
                              'Узнать прогноз погоды',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
