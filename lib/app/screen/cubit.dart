import 'package:bloc_flutter/app/pattern/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitWidget extends StatelessWidget {
  const CubitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counter = CounterCubit();
    return BlocBuilder<CounterCubit, int>(
        bloc: counter,
        builder: (context, state) {
          return Row(
            children: [
              const Text("Cubit"),
              IconButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  icon: const Icon(Icons.exposure_minus_1_rounded)),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: Text(state.toString(),
                    style: const TextStyle(color: Colors.white)),
              ),
              IconButton(
                  onPressed: () {
                    counter.increment();
                  },
                  icon: const Icon(Icons.exposure_plus_1_outlined)),
            ],
          );
        });
  }
}
