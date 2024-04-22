import 'package:bloc_flutter/app/pattern/bloc/basic/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBasic extends Bloc<CounterState, int> {
  BlocBasic() : super(0) {
    on<CounterIncremented>((event, emit) => emit(state + 1));

    on<CounterDecremented>((event, emit) => emit(state - 1));
  }
}
