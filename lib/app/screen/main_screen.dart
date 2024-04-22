import 'package:bloc_flutter/app/screen/bloc.dart';
import 'package:bloc_flutter/app/screen/bloc_event.dart';
import 'package:bloc_flutter/app/screen/cubit.dart';
import 'package:flutter/material.dart';

class BlocExmaple extends StatelessWidget {
  const BlocExmaple({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CubitWidget(), BlocWidget(), BlocEventWidget()],
            ),
          ],
        ),
      ),
    );
  }
}
