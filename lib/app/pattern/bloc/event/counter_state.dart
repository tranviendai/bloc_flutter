abstract class CounterState {
  int counter = 0;
  CounterState({required this.counter});
}

final class CounterInitState extends CounterState {
  CounterInitState(): super(counter: 0);
}

final class CounterIncremented extends CounterState {
  CounterIncremented(int incrementCounter) : super(counter: incrementCounter);
}

final class CounterDecremented extends CounterState {
  CounterDecremented(int decrementCounter) : super(counter: decrementCounter);
}