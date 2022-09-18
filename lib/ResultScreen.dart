import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'YOUR SCORE',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60,),
            Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(250),
                        gradient: const LinearGradient(colors: Colors.primaries)
                    ),
                    height: 250,
                    width: 250,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      '80 %',
                      style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Text(
                      'Correct',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      '8',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Wrong',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      '2',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25,),
            Container(
              height: 60,
              width: size.width * 0.66,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
              ),
              child: const Center(
                child: Text(
                  'START NEW QUIZ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
