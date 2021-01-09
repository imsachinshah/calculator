import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void DoAdd(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void DoSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void DoMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void DoDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void DoClear(){
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculator'
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Output: $sum',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Number 1'
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Number 2'
              ),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.all(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.blueAccent[200],
                  child: Text('+'),
                  onPressed: () {
                    DoAdd();
                  },
                ),
                MaterialButton(
                  color: Colors.blueAccent[200],
                  child: Text('-'),
                  onPressed: () {
                    DoSub();
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.blueAccent[200],
                  child: Text('*'),
                  onPressed: () {
                    DoMul();
                  },
                ),
                MaterialButton(
                  color: Colors.blueAccent[200],
                  child: Text('/'),
                  onPressed: () {
                    DoDiv();
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.all(20.0)),
            MaterialButton(
              color: Colors.blueAccent[200],
              child: Text('Clear'),
              onPressed: () {
                DoClear();
              },
            ),
          ],
        )
      ),
    );
  }
}
