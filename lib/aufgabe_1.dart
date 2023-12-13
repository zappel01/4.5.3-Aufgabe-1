import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Row(
            children: [
              Text('Column and Row Example'),
            ],
          ),
        ),
        body: const Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sven',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(4, 7),
                    blurRadius: 8,
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('B',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                )),
            Text('C',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                )),
            Text('D',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 40,
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Vitamin E'),
          ],
        ),
      ],
    );
  }
}
