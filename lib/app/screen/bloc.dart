import 'package:bloc_flutter/app/pattern/bloc/basic/counter_bloc.dart';
import 'package:bloc_flutter/app/pattern/bloc/basic/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocWidget extends StatelessWidget {
  const BlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<BlocBasic, int>(
        listenWhen: (previous, current) => true,
        listener: (context, state) {
          if (state < 0) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Listened < 0"), duration: Duration(seconds: 3)));
          }
        },
        child: BlocBuilder<BlocBasic, int>(
          buildWhen: (previous, current) => true,
          builder: (context, state) => Row(
            children: [
              const Text("Basic"),
              IconButton(
                  onPressed: () {
                    context.read<BlocBasic>().add(CounterDecremented());
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
                    context.read<BlocBasic>().add(CounterIncremented());
                  },
                  icon: const Icon(Icons.exposure_plus_1_outlined)),
            ],
          ),
        ));
  }
}
