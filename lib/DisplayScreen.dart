import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({Key? key}) : super(key: key);

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
                  "Science",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Center(
              child: Text(
                "1/10",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 60,),
            const Center(
              child: Text(
                "Questions will be displayed here!",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 60,),
            Container(
              height: 55,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Option 1',
                  style: TextStyle(
                    color: Color.fromRGBO(66, 66, 66, 1.0),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 55,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Option 2',
                  style: TextStyle(
                    color: Color.fromRGBO(66, 66, 66, 1.0),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),

            Container(
              height: 55,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(28, 197, 212, 1.0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Option 3',
                  style: TextStyle(
                    color: Color.fromRGBO(66, 66, 66, 1.0),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 55,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Option 4',
                  style: TextStyle(
                    color: Color.fromRGBO(66, 66, 66, 1.0),
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
