// ignore_for_file: unused_field

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'مسبحة إلكترونية'),
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
  int _counterofsobhanallah = 0;
  int _counterofalhamdulillah = 0;
  int _counterofallahuakbar = 0;
  var typeOfTasbeeh = "";
  void _incrementCounterSohanallah() {
    setState(() {
      typeOfTasbeeh = "سبحان الله";
      _counterofsobhanallah++;
    });
  }

  void _incrementCounterAlhamdulillah() {
    setState(() {
      typeOfTasbeeh = "الحمد لله";
      _counterofalhamdulillah++;
    });
  }

  void _incrementCounterAllahuakbar() {
    setState(() {
      typeOfTasbeeh = "الله أكبر";
      _counterofallahuakbar++;
    });
  }

  int swichCounter() {
    switch (typeOfTasbeeh) {
      case "سبحان الله":
        return _counterofsobhanallah;
      case "الحمد لله":
        return _counterofalhamdulillah;
      case "الله أكبر":
        return _counterofallahuakbar;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 96, 29),
        title: Text(
          widget.title,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 250, 250)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              typeOfTasbeeh,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${swichCounter()}',
              style: const TextStyle(
                  color: Color.fromARGB(255, 13, 107, 19),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounterSohanallah,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 96, 29),
                  ),
                  child: const Text('سبحان الله',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      ),
                ),),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementCounterAlhamdulillah,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 96, 29),
                  ),
                  child: const Text('الحمد لله',
                   style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      ),),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementCounterAllahuakbar,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 96, 29),
                  ),
                  child: const Text('الله أكبر',
                   style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
