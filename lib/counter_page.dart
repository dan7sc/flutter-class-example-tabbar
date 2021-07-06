import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  CounterPage({
    Key? key,
    required int counter,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

//   @override
//   _CounterPageState createState() => _CounterPageState();
// }

// class _CounterPageState extends State<CounterPage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

  @override
  Widget build(BuildContext context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      );
    // );
  }
}
