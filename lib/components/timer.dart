import 'package:flutter/material.dart';
import 'package:mobx1/components/timeButton.dart';
import 'package:mobx1/store/pomodoro.store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Observer(
      builder: (_) {
        return Container(
          color: store.isWorking() ? Colors.red : Colors.green,
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  store.isWorking() ? 'Hora de Trabalhar' : 'Hora de Descansar',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
                  style: TextStyle(fontSize: 80, color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!store.initialize)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TimeButton(
                          text: "Iniciar",
                          icon: Icons.play_arrow,
                          click: store.start,
                        ),
                      ),
                    if (store.initialize)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TimeButton(
                          text: "Parar",
                          icon: Icons.stop,
                          click: store.stop,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TimeButton(
                        text: "Reiniciar",
                        icon: Icons.refresh,
                        click: store.restarted,
                      ),
                    ),
                  ],
                ),
              ],
            ),
        );
      },
    );
  }
}
