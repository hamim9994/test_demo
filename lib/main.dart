import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //for substracting
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  // for multipling
  void _multiplier() {
    setState(() {
      _counter*=10;
    });
  }
  //printing
  void _print1() {
    setState(() {
      'gvgvhg';
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                        onPressed: _multiplier,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                        ),
                        child: Icon(
                          Icons.star_purple500_sharp,
                          size: 33,
                          color: Colors.cyan,
                        ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: _decrementCounter,
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: Icon(
                        Icons.linear_scale_sharp,
                        size: 33,
                        color: Colors.redAccent,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.purpleAccent,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
