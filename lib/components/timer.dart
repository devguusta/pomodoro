import 'package:flutter/material.dart';
import 'package:mobx1/components/timeButton.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(fontSize: 80, color: Colors.white),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TimeButton(text: "Iniciar", icon: Icons.play_arrow,),
              ),
              //  Padding(
              //    padding: const EdgeInsets.all(8.0),
              //    child: TimeButton(text: "Parar", icon: Icons.stop,),
              //  ),
               Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: TimeButton(text: "Reiniciar", icon: Icons.refresh,),
               ),
            ],
          ),
        ],
      ),
    );
  }
}
