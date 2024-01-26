import 'package:flutter/material.dart';

void main() {
  runApp(MovieUi());
}

class MovieUi extends StatefulWidget {
  @override
  State<MovieUi> createState() => _MovieUiState();
}

class _MovieUiState extends State<MovieUi> {
  var height = 90.0;
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: Container(
                height: 600,
                width: 400,
                child: Image.asset(
                  "assets/images/R1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isExpand == true) {
                    height = 90;
                    isExpand = false;
                  } else {
                    height = 300;
                    isExpand = true;
                  }
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: height,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 8,
                        spreadRadius: 8,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey,
                          width: 100,
                          height: 5,
                        ),
                        SizedBox(height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Watch Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.watch_later,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 3),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Revenant-",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Adventure - Drama - Action 2015 * 2h 35m",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.yellowAccent,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "4.5 Ratings",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "A frontiersman on a fur trading expedition in the 1820s fights for survival"
                          " after being mauled by a bear and left for dead"
                          " by members of his own hunting team.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Read More",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 2),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 3),
                              child: Row(
                                children: [
                                  Text(
                                    "Play Trailer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.play_circle,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3, vertical: 3),
                              child: Row(
                                children: [
                                  Text(
                                    "Play Movie",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                  Icon(
                                    Icons.play_circle,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
