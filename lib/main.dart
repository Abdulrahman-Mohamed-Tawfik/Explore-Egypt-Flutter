import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
import 'reg.dart';  // Import the SignUp screen

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  ));
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Welcome> {
  int currentImageIndex = 0;

  final List<String> backgroundImages = [
    'assets/1.jpg',
    'assets/temple-4687909_1920.jpg',
    // Add more image paths as needed
  ];

  @override
  void initState() {
    super.initState();
    startImageTransition();
  }

  void startImageTransition() {
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        currentImageIndex = (currentImageIndex + 1) % backgroundImages.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: TweenAnimationBuilder<int>(
          key: ValueKey<int>(currentImageIndex),
          duration: Duration(seconds: 1),
          tween: IntTween(begin: currentImageIndex, end: currentImageIndex),
          builder: (BuildContext context, int value, Widget? child) {
            return Container(
              key: ValueKey<int>(currentImageIndex),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(backgroundImages[value]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 90.0),
                child: Column(
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 75,
                        color: Colors.white,
                        fontFamily: 'Anton-Regular',
                        letterSpacing: 4,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 25.0,
                            color: Colors.black.withOpacity(1), // Adjust opacity as needed
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'EGYPT',
                      style: TextStyle(
                        fontSize: 75,
                        color: Colors.white,
                        fontFamily: 'Montserrat-VariableFont_wght',
                        letterSpacing: 1,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 25.0,
                            color: Colors.black.withOpacity(1), // Adjust opacity as needed
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 140, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enjoy your',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontFamily: 'Montserrat-VariableFont_wght',
                              height: 1,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 25.0,
                                  color: Colors.black.withOpacity(1), // Adjust opacity as needed
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Luxurious',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              height: 1,
                              fontWeight: FontWeight.bold,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 25.0,
                                  color: Colors.black.withOpacity(1), // Adjust opacity as needed
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Vacation',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: 'Montserrat-Regular',
                              fontWeight: FontWeight.bold,
                              height: 1,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 25.0,
                                  color: Colors.black.withOpacity(1), // Adjust opacity as needed
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),  // Navigate to the Login screen
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 15.0),
                              backgroundColor: Color(0xFF176FF2),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Montserrat-VariableFont_wght',
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 25.0,
                                    color: Colors.black.withOpacity(1), // Adjust opacity as needed
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Reg(),  // Navigate to the SignUp screen
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 15.0),
                              backgroundColor: Color(0xFF176FF2),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Montserrat-VariableFont_wght',
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(1.0, 1.0),
                                    blurRadius: 25.0,
                                    color: Colors.black.withOpacity(1), // Adjust opacity as needed
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          onEnd: () {
            startImageTransition();
          },
        ),
      ),
    );
  }
}
