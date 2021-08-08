import 'package:flutter/material.dart';
import 'package:mobx1/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class TimeIn extends StatelessWidget {
 final int value;
 final String title;
 final void Function()? inc;
 final void Function()? dec;
  const TimeIn({
    Key? key,
    required this.value,
    required this.title,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(this.title, style: TextStyle(fontSize:25)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              primary: store.isWorking() ? Colors.red : Colors.green,
            ),
            onPressed: this.dec,
            child: Icon(Icons.arrow_downward, color: Colors.white)
          ),
           Text('${this.value} min', style: TextStyle(fontSize: 18,)),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              primary: store.isWorking() ? Colors.red : Colors.green,
            ),
            onPressed: this.inc,
            child: Icon(Icons.arrow_upward, color: Colors.white)
          ),
          ],
        ),
        
      ]
    );
  }
}
