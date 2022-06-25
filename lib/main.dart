import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String total = "";
  String first = "";
  String second = "";
  String logic = "";
  bool eql = false;

  _clearInputs() {
    setState(() {
      total = "";
      first = "";
      second = "";
      logic = "";
      eql = false;
    });
  }

  _handleEqn(String a){
    if(first == ""){
      setState(() {
        first = a;
      });
    }
    else if(second == ""){
      setState(() {
        second = a;
      });
    }
  }

  _handleLog(String a){
    if(logic == ""){
      setState(() {
        logic = a;
      });
    }
  }

  _handleAns(){
    if(first != "" || second != "" || logic != ""){
      switch(logic){
        case "+":
          setState(() {
            total = (int.parse(first) + int.parse(second)).toString();
            eql = true;
          });
          break;
        case "-":
          setState(() {
            total = (int.parse(first) - int.parse(second)).toString();
            eql = true;
          });
          break;
        case "/":
          setState(() {
            total = (int.parse(first) / int.parse(second)).toString();
            eql = true;
          });
          break;
        case "*":
          setState(() {
            total = (int.parse(first) * int.parse(second)).toString();
            eql = true;
          });
          break;
      }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent[100],
            padding: EdgeInsets.symmetric(),
            child: Align(
              alignment: Alignment.bottomRight,
              child:

              Text(first.toString()+" "+logic.toString()+" "+second.toString()+ '${eql ? ' = ' : ''}' +total.toString(),
                  style: TextStyle(fontSize: 80), textAlign: TextAlign.right),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _handleEqn('1');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('2');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('3');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _handleEqn('4');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('5');
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('6');
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _handleEqn('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('8');
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleEqn('9');
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child:           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _handleLog("+");
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleLog("-");
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleLog("/");
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleLog("*");
                  },
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    _handleAns();
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _clearInputs();
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
