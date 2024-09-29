import 'package:flutter/material.dart';
import 'package:my_app/helpers/k_log.dart';

class float extends StatefulWidget {
  const float({super.key});

  @override
  State<float> createState() => _floatState();
}

class _floatState extends State<float> {
  // final TextEditingController _controller = TextEditingController();

  // int num = 0;
  // void calcu({required int number}) {
  //   // int number = 0;
  //   if (number % 2 == 0) {
  //     kLog('$number is even');
  //   } else {
  //     kLog('$number is odd');
  //   }
  // }
  final TextEditingController _numbers = TextEditingController();
  final TextEditingController _numbers2 = TextEditingController();
  final TextEditingController _result = TextEditingController();
  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();
  final TextEditingController _num3 = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  int numbers = 0;
  int numbers2 = 0;
  int result = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  String enterUserName = 'sajib';
  String enterPassword = '123s';
  void odds() {
    if (numbers % 2 == 0) {
      kLog("$numbers is Even");
    } else {
      kLog("$numbers is Odd");
    }
  }

  void positive() {
    if (numbers2 > 0) {
      kLog("$numbers is positive");
    } else if (numbers2 < 0) {
      kLog("$numbers is Negative");
    } else {
      kLog("$numbers2 is 0");
    }
  }

  void results() {
    if (result >= 90) {
      kLog("Result is  Grade A");
    } else if (result >= 80) {
      kLog("Result is  Grade B");
    } else if (result >= 70) {
      kLog("Result is  Grade C");
    } else if (result >= 60) {
      kLog("Result is  Grade D");
    } else {
      kLog("Result is  Fail");
    }
  }

  void calculation() {
    int sum = numbers + numbers2;
    kLog("The Sum is $sum");
    int sub = numbers - numbers2;
    kLog("The Sub is $sub");
    int mul = numbers * numbers2;
    kLog("The Mul is $mul");
    int div = numbers % numbers2;
    kLog("The Div is $div");
  }

  void largest() {
    if (num1 > num2 && num1 > num3) {
      kLog("$num1 is lergest");
    } else if (num2 > num1 && num2 > num3) {
      kLog("$num2 is lergest");
    } else {
      kLog("$num3 is lergest");
    }
  }

  void leapYear() {
    if (num3 % 4 == 0) {
      if (num3 % 100 == 0) {
        if (num3 % 400 == 0) {
          kLog('Leap Year');
        } else {
          kLog('Not Leap Year');
        }
      } else {
        kLog('Leap Year');
      }
    } else {
      kLog('Not Leap Year');
    }
  }

  void login() {
    String enterUserName = _username.text;
    String enterPassword = _password.text;

    if (enterUserName == _username) {
      if (enterPassword == _password) {
        print('Login Successful');
      } else {
        print('Incorrect Password');
      }
    } else {
      print('Incorrect Username');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _numbers,
              decoration: InputDecoration(
                labelText: "Enter Number",
                border: OutlineInputBorder(),
              ),
              onChanged: (Text) {
                kLog("Current input: $numbers");
                numbers = int.parse(Text);
              },
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              controller: _numbers2,
              decoration: InputDecoration(
                labelText: "Enter Number 2",
                border: OutlineInputBorder(),
              ),
              onChanged: (Text) {
                kLog("Current input: $numbers2");
                numbers2 = int.parse(Text);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            SizedBox(
              child: Text("Result Form"),
              height: 20,
            ),
            TextField(
              controller: _result,
              decoration: InputDecoration(
                labelText: "Enter your Number",
                border: OutlineInputBorder(),
              ),
              onChanged: (Text) {
                kLog("Numbers Input: $result");
                result = int.parse(Text);
              },
            ),

            Divider(),
            SizedBox(
              child: Text("Lergest of 3 number check"),
              height: 20,
            ),

            TextField(
              controller: _num1,
              decoration: InputDecoration(
                  labelText: "Enter Number 1", border: OutlineInputBorder()),
              onChanged: (Text) {
                num1 = int.parse(Text);
              },
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              controller: _num2,
              decoration: InputDecoration(
                  labelText: "Enter Number 2", border: OutlineInputBorder()),
              onChanged: (Text) {
                num2 = int.parse(Text);
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _num3,
              decoration: InputDecoration(
                  labelText: "Enter Number 3", border: OutlineInputBorder()),
              onChanged: (Text) {
                num3 = int.parse(Text);
              },
            ),

            SizedBox(
              height: 20,
            ),

            SizedBox(
              child: Text("Login Form"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(16.0),
            ),

            ElevatedButton(
                onPressed: () {
                  // odds();
                  // positive();
                  // calculation();
                  // results();
                  // largest();
                  // leapYear();
                  login();
                },
                child: Text("Calculate"))
            // SizedBox(
            //   child: Text("Odd Even Checker"),
            //   height: 50,
            // ),
            // TextField(
            //   controller: _controller,
            //   decoration: InputDecoration(
            //     labelText: 'Enter text',
            //     border: OutlineInputBorder(),
            //   ),
            //   onChanged: (text) {
            //     kLog('Current input: $text');
            //     num = int.parse(text);
            //     // Callback on text change
            //   },
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Center(
            //   child: ElevatedButton(
            //       onPressed: () {
            //         calcu(number: num);
            //       },
            //       child: Text("Calculation")),
            // ),
          ],
        ),
      ),
    );
  }
}
