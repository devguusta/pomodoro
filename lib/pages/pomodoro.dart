import 'package:flutter/material.dart';
import 'package:mobx1/components/timeIn.dart';
import 'package:mobx1/components/timer.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Time()),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 40.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
            
            TimeIn(value: 25, title: 'Trabalho'),
            TimeIn(value: 5, title: 'Descanso'),
             ],
           ),
         ),
        ],
      ),
    );
  }
}