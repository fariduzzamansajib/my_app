import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Two-Color Card')),
        body: Center(
            child: Card(
          elevation: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8), // Clip the whole card
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    color: const Color.fromARGB(255, 118, 125, 131),
                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                    child: Text(
                      'Left Side (Blue)',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 200,
                    color: Colors.black,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Right Side (Black)',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
