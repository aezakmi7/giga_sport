import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 250, 253, 39)),
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
  int counter = 0;

  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kolya Program'),
        backgroundColor: const Color.fromARGB(255, 236, 151, 144),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('press button'),
            Text('$counter'),
            ElevatedButton(
              onPressed: () {
                increaseCounter();
              },
              child: Text(
                'button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                    const Color.fromARGB(255, 63, 99, 129)),
              ),
            ),
            Text("this button"),
            ElevatedButton(
              onPressed: () {
                increaseCounter();
              },
              child: Text(
                'second button',
                style: TextStyle(
                  color: const Color.fromARGB(255, 212, 83, 83),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
