import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePointA() {
    setState(() {
      teamAPoints++;
    });
    print(teamAPoints);
  }

  void addTwoPointA() {
    setState(() {
      teamAPoints += 2;
    });
    print(teamAPoints);
  }

  void addThreePointA() {
    setState(() {
      teamAPoints += 3;
    });
    print(teamAPoints);
  }

  void addOnePointB() {
    setState(() {
      teamBPoints++;
    });
    print(teamBPoints);
  }

  void addTwoPointB() {
    setState(() {
      teamBPoints += 2;
    });
    print(teamBPoints);
  }

  void addThreePointB() {
    setState(() {
      teamBPoints += 3;
    });
    print(teamBPoints);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32, color: Colors.orange),
                    ),
                    Text(
                      'orange team',
                      style: TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(fontSize: 150, color: Colors.orange),
                    ),
                    TextButton(
                      onPressed: addOnePointA,
                      child: Text(
                        'Add 1 Points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 60)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: addTwoPointA,
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 60)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: addThreePointA,
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 60)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 32, color: Colors.red),
                    ),
                    Text(
                      'red team',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(fontSize: 150, color: Colors.red),
                    ),
                    TextButton(
                      onPressed: addOnePointB,
                      child: Text(
                        'Add 1 points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(100, 60)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: addTwoPointB,
                      child: Text(
                        'Add 2 points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(100, 60)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: addThreePointB,
                      child: Text(
                        'Add 3 points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(100, 60)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, minimumSize: Size(100, 60)),
            ),
          ],
        ),
      ),
    );
  }
}
