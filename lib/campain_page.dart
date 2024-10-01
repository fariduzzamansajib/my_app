import 'package:flutter/material.dart';

class CampainPage extends StatelessWidget {
  const CampainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Campaign!')),
        body: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              // First Card
              Expanded(
                child: Card(
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(4), // Clip the whole card
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 80,
                            color: const Color(0xff212529),
                            padding: EdgeInsets.fromLTRB(6, 25, 0, 0),
                            child: const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'EMPLOYEES',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '15 Day(s)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 80,
                            color: const Color(0xff595C5F),
                            child: Center(
                              child: Icon(
                                Icons.groups_2_sharp,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SizedBox(width: 2), // Space between the cards

              // Second Card
              Expanded(
                child: Card(
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(4), // Clip the whole card
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 80,
                            color: const Color(0xff6C757D),
                            padding: EdgeInsets.fromLTRB(6, 25, 5, 0),
                            child: const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'VERIFIED DOMAIN',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '40% Quota Used',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 80,
                            color: const Color(0xff91989E),
                            child: Center(
                              child: Icon(
                                Icons.security,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SizedBox(width: 2), // Space between the cards

              // Third Card
              Expanded(
                child: Card(
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(4), // Clip the whole card
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 80,
                            color: const Color(0xffEDC755),
                            padding: EdgeInsets.fromLTRB(6, 25, 5, 0),
                            child: Column(
                              children: const [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'DOMAIN PENDING',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '10 Day(s)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 80,
                            color: const Color(0xffF2D580),
                            child: Center(
                              child: Icon(
                                Icons.key,
                                size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
