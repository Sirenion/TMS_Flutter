import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:homework/homework2/models/models.dart';
import 'package:homework/homework2/network_service.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(const WeatherState()) {
    on<GetWeather>((event, emit) async {
      emit(const WeatherState(isLoading: true));
      try {
        final weather = await event.networkService.getWeather(name: event.city);
        emit(WeatherState(weather: weather, isLoading: false));
      } catch (e) {
        emit(WeatherState(errorText: e.toString()));
      }
    });
  }
}

