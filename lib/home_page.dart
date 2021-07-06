import 'package:flutter/material.dart';

import 'counter_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  final _pageController = PageController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: PageView(
        controller: _pageController,
        pageSnapping: false,
        children: [
          CounterPage(counter: _counter),
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.red)),
              Expanded(flex: 2, child: Container(color: Colors.green)),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.green)),
            ],
          ),
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.red)),
            ],
          ),
          CounterPage(counter: _counter),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                _pageController.animateTo(
                  _pageController.position.pixels -
                    MediaQuery.of(context).size.width,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                _pageController.animateTo(
                  _pageController.position.pixels +
                    MediaQuery.of(context).size.width,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
