import 'package:bloc_flutter/app/pattern/bloc/event/counter_event.dart';
import 'package:bloc_flutter/app/pattern/bloc/event/counter_state.dart';
import 'package:bloc_flutter/app/pattern/bloc/event/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocEventWidget extends StatelessWidget {
  const BlocEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BlocEvent, CounterState>(
        buildWhen: (previous, current) => true,
        listenWhen: (previous, current) => true,
        listener: (context, state) {
          if (state.counter < 0) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Listened < 0"), duration: Duration(seconds: 3)));
          }
        },
        builder:(context, state) => Row(
            children: [
              const Text("Event"),
              IconButton(
                  onPressed: () {
                    context.read<BlocEvent>().add(CounterDecrementEvent());
                  },
                  icon: const Icon(Icons.exposure_minus_1_rounded)),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Text(state.counter.toString(),
                    style: const TextStyle(color: Colors.white)),
              ),
              IconButton(
                  onPressed: () {
                    context.read<BlocEvent>().add(CounterIncrementEvent());
                  },
                  icon: const Icon(Icons.exposure_plus_1_outlined)),
            ],
        ));
  }
}
