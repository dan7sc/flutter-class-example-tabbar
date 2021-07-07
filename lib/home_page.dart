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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBarExample"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Counter"),
              ),
              Tab(
                child: Text("Blue"),
              ),
              Tab(
                child: Text("Colors 1"),
              ),
              Tab(
                child: Text("Colors 2"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            CounterPage(counter: _counter),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
      ),
    );
  }
}

class NavigatorButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const NavigatorButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        child: Center(child: Text(text)),
        onTap: onPressed,
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(flex: 1, child: Container(color: Colors.blue)),
        Expanded(flex: 1, child: Container(color: Colors.yellow)),
        Expanded(flex: 1, child: Container(color: Colors.pink)),
        Expanded(flex: 1, child: Container(color: Colors.white)),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(flex: 1, child: Container(color: Colors.yellow)),
        Expanded(flex: 1, child: Container(color: Colors.pink)),
        Expanded(flex: 1, child: Container(color: Colors.green)),
        Expanded(flex: 1, child: Container(color: Colors.red)),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(flex: 1, child: Container(color: Colors.blue)),
      ],
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
