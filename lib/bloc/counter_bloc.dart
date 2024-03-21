import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final curretValue=state.count;
      final incrementedValue=curretValue+1;
      return emit(CounterState(count: incrementedValue));
    });

    on<Decrement>((event, emit) {
      final curretValue=state.count;
      final decrementedValue=curretValue-1;
      return emit(CounterState(count: decrementedValue));
    });
  }
}
