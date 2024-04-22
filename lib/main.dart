import 'package:bloc_flutter/app/pattern/bloc/basic/counter_bloc.dart';
import 'package:bloc_flutter/app/pattern/bloc/event/counter_bloc.dart';
import 'package:bloc_flutter/app/pattern/cubit/counter_cubit.dart';
import 'package:bloc_flutter/app/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BlocApp());
}

class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BlocBasic()),
        BlocProvider(create: (_) => BlocEvent()),
        BlocProvider(create: (_) => CounterCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Bloc',
        theme: ThemeData.dark(),
        home: const BlocExmaple(),
      ),
    )
    );
  }
}
