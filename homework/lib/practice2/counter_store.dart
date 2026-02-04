import 'package:homework/practice2/actions/counter_actions.dart';
import 'package:homework/practice2/state/counter_state.dart';
import 'package:homework/practice2/state/history_item.dart';

CounterState counterReducer(CounterState state, action) {
  if (action is! CounterActions) {
    return state;
  }
  return action.when(
    increment: () => state.copyWith(
      count: state.count + 1,
      history: [...state.history, const HistoryItem.increment(1)],
    ),
    decrement: () => state.copyWith(
      count: state.count - 1,
      history: [...state.history, const HistoryItem.decrement(1)],
    ),
  );
}
