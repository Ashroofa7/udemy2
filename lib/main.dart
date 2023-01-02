import 'package:first/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/cubit_counter.dart';

void main() {
  runApp(const HomePoints());
}

class HomePoints extends StatelessWidget {
  const HomePoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CubitCounter(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}



