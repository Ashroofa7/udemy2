import 'package:first/Cubit/cubit_counter_States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounter extends Cubit<CubitCounterStates> {
   CubitCounter() : super(InitialStates());
   static CubitCounter get(context)=> BlocProvider.of(context);
   int aPoints = 0 ;
   int bPoints = 0 ;

   void  CountP ({required String team,int? p}){
      if(team=='A') {
         aPoints += p!;
         emit(IncrementAStates());
      }
      else if(team=='B') {
         bPoints += p!;
         emit(IncrementBStates());
      }else{
         aPoints=0;
         bPoints=0;
         emit(ResetStates());
      }
   }


}
