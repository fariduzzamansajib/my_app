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
  int numbers = 0;
  void odds() {
    if (numbers % 2 == 0) {
      kLog("$numbers is Even");
    } else {
      kLog("$numbers is Odd");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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

          ElevatedButton(
              onPressed: () {
                odds();
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
    );
  }
}
