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

  increment() {
    if (data == 30)
      reset();
    else
      data++;
  }

  decrement() {
    data--;
  }

  reset() => data = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasbih App'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('images/tsabih.png'),
              width: 200,
            ),
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
                      increment();
                    });
                  },
                  child: Icon(Icons.adjust),
                  backgroundColor: Colors.teal,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      reset();
                    });
                  },
                  child: Icon(Icons.cached),
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
