import 'package:flutter/material.dart';

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
              primary: Colors.red,
            ),
            onPressed: this.dec,
            child: Icon(Icons.arrow_downward, color: Colors.white)
          ),
           Text('${this.value} min', style: TextStyle(fontSize: 18,)),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              primary: Colors.red,
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
