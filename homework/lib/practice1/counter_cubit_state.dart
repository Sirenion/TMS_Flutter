part of 'counter_cubit.dart';

class CounterCubitState extends Equatable {
  final int count;

  const CounterCubitState({required this.count});

  @override
  List<Object?> get props => [count];
}
