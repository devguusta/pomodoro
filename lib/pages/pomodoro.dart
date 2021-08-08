import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx1/components/timeIn.dart';
import 'package:mobx1/components/timer.dart';
import 'package:mobx1/store/pomodoro.store.dart';
import 'package:provider/provider.dart';


class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Time()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TimeIn(
                    value: store.timeWork,
                    title: 'Trabalho',
                    inc: store.incrementTimeWork,
                    dec: store.decrementTimeWork,
                  ),
                  TimeIn(
                    value: store.timeRest,
                    title: 'Descanso',
                    inc: store.incrementTimeRest,
                    dec: store.decrementTimeRest,
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
