import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(const CounterCubitState(count: 0));

  void increment() {
    emit(CounterCubitState(count: state.count + 1));
  }

  void decrement() {
    emit(CounterCubitState(count: state.count - 1));
  }

  void reset() {
    emit(const CounterCubitState(count: 0));
  }
}
