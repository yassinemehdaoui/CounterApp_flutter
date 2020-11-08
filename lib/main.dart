import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int data = 0;

  increment() => data++;
  decrement() => data--;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$data',
              style: TextStyle(fontSize: 60),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      decrement();
                    });
                  },
                  child: Icon(Icons.remove),
                  backgroundColor: Colors.teal,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      increment();
                    });
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.teal,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
