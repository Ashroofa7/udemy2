import 'package:first/Cubit/cubit_counter.dart';
import 'package:first/Cubit/cubit_counter_States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class Team1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitCounter, CubitCounterStates>(
      builder: (context, state) {
        return  Container(
          height: MediaQuery.of(context).size.height * .65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Team A',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${CubitCounter.get(context).aPoints}',
                style: const TextStyle(
                  fontSize: 100,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  CubitCounter.get(context).CountP(team:'A', p: 1);
                },
                child: const Text(
                  'Add 1 Point',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  CubitCounter.get(context).CountP(team:'A', p: 2);
                },
                child: const Text(
                  'Add 2 Points',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  fixedSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  CubitCounter.get(context).CountP(team:'A', p: 3);
                },
                child: const Text(
                  'Add 3 Points',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
