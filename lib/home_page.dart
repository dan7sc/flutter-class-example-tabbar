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
        physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        children: [
          CounterPage(counter: _counter),
          Flex(
            direction: Axis.vertical,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.blue)),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.yellow)),
              Expanded(flex: 1, child: Container(color: Colors.pink)),
              Expanded(flex: 1, child: Container(color: Colors.green)),
              Expanded(flex: 1, child: Container(color: Colors.red)),
            ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(flex: 1, child: Container(color: Colors.blue)),
              Expanded(flex: 1, child: Container(color: Colors.yellow)),
              Expanded(flex: 1, child: Container(color: Colors.pink)),
              Expanded(flex: 1, child: Container(color: Colors.white)),
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
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
                child: Center(child: Text("1")),
                onTap: () {
                  _pageController.animateTo(
                    _pageController.position.minScrollExtent,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                }),
          ),
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
                child: Center(child: Text("2")),
                onTap: () {
                  _pageController.animateTo(
                    _pageController.position.minScrollExtent +
                        (MediaQuery.of(context).size.width),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                }),
          ),
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
                child: Center(child: Text("3")),
                onTap: () {
                  _pageController.animateTo(
                    _pageController.position.minScrollExtent +
                        (MediaQuery.of(context).size.width * 2),
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                }),
          ),
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              child: Center(child: Text("4")),
              onTap: () {
                _pageController.animateTo(
                  _pageController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

class ConfirmDataDialog extends StatelessWidget {
  const ConfirmDataDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Existem campos inválidos",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text("Cancelar"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text("Confirmar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
