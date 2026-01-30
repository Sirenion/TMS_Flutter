import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(count: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      final count = state.count;
      emit(CounterState(count: count + 1));
    });
    on<DecrementCounterEvent>((event, emit) {
      final count = state.count;
      emit(CounterState(count: count - 1));
    });
    on<ResetCounterEvent>((event, emit) {
      emit(const CounterState(count: 0));
    });
  }
}
