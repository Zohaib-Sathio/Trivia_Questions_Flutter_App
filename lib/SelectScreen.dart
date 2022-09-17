import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool checkValue = true;
  int noOfQuestions = 5;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('NO OF QUESTIONS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (noOfQuestions == 5) ? Colors.greenAccent : Colors.grey[900],
                    ),
                    child: const Center(
                      child: Text('5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                  onTap: (){
                    noOfQuestions = 5;
                    setState(() {

                    });
                  },
                ),
                // const SizedBox(width: 20,),
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (noOfQuestions == 10) ? Colors.greenAccent : Colors.grey[900],
                    ),
                    child: const Center(
                      child: Text('10',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    noOfQuestions = 10;
                    setState(() {

                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (noOfQuestions == 15) ? Colors.greenAccent : Colors.grey[900],
                    ),
                    child: const Center(
                      child: Text('15',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    noOfQuestions = 15;
                    setState(() {

                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: (noOfQuestions == 20) ? Colors.greenAccent : Colors.grey[900],
                    ),
                    child: const Center(
                      child: Text('20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: (){
                    noOfQuestions = 20;
                    setState(() {

                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Center(
              child: Text('CATEGORIES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lime,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "Science ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "General Knowledge ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.9,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "Maths ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "Brain Storming  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "IT  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.9,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "History  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "Arts  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "Economics  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.9,
                        child: Checkbox(value: checkValue, side: const BorderSide(color: Color(0xffFFFFFF)) ,onChanged: (value) {
                          setState(() {
                            checkValue = !checkValue;
                          });
                        }),
                      ),
                      const Text(
                        "English  ",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30,),
            const Center(
              child: Text('LEVEL OF QUESTIONS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('EASY',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('MEDIUM',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('HARD',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () { },
              child: const Text('GET STARTED'),
            )

          ],
        ),
      ),
    );
  }
}
