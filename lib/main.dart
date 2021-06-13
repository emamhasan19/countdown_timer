import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  var comment;

  @override
  Widget build(BuildContext context) {
    if (count < 10) {
      comment = "Go ahead!";
    } else if (count == 10) {
      comment = "Wow you're done!";
    } else {
      comment = "Reset to get started again!";
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Countdown Timer!"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's start the countdown!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Counter value: " + count.toString(),
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.red,
              child: Center(
                child: Text(
                  comment,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                count % 2 == 0
                    ? "This is an even number!"
                    : "This is an odd number!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FloatingActionButton(
              //child: Icon(Icons.reset_tv),
              child: Text("Reset"),
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
