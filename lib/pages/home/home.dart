import 'package:first/Cubit/cubit_counter.dart';
import 'package:first/pages/team1/team1.dart';
import 'package:first/pages/team2/team2.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Points'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Expanded(child: Team1()),
              Container(
                height:MediaQuery.of(context).size.height*.6,
                child: const VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              Expanded(child: Team2()),
            ],
          ),
          const Spacer(flex: 1,),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              fixedSize: const Size(100, 50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
            ),
            onPressed: () {
              CubitCounter.get(context).CountP(team: 'C',);
            },
            child: const Text('Reset',style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
          ),
          const Spacer(flex: 5,)
        ],
      ),
    );
  }
}
