import 'package:bloc_flutter/app/pattern/bloc/event/counter_state.dart';
import 'package:bloc_flutter/app/pattern/bloc/event/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocEvent extends Bloc<CounterEvent,CounterState> {
  BlocEvent() : super(CounterInitState()){
    on<CounterIncrementEvent>(((event, emit) => emit(CounterIncremented(state.counter + 1))));
    on<CounterDecrementEvent>(((event, emit) => emit(CounterDecremented(state.counter - 1))));
  }
}
