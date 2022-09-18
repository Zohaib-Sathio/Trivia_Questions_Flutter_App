import 'package:flutter/material.dart';

import 'customWidgets/questionButton.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool checkValue = true;
  int noOfQuestion = 5;

  bool foodDrink = false;
  bool artLiterature = false;
  bool music = false;
  bool science = false;
  bool geography = false;
  bool isSelected = true;
  bool isSelected2 = true;

  startQuiz(){
    int count = 0;
    String apiString = 'https://the-trivia-api.com/api/questions?limit=$selected&difficulty=$diffLevel';
    if(foodDrink || artLiterature || music || science || geography){
      apiString = '$apiString&categories=';
      if(foodDrink){
        count++;
        apiString = '${apiString}food_and_drink';
      }
      if(artLiterature){
        if(count > 0){
          apiString = '$apiString,';
        }
        count++;
        apiString = '${apiString}arts_and_literature';
      }
      if(music){
        if(count > 0){
          apiString = '$apiString,';
        }
        count++;
        apiString = '${apiString}music';
      }
      if(science){
        if(count > 0){
          apiString = '$apiString,';
        }
        count++;
        apiString = '${apiString}science';
      }
      if(geography){
        if(count > 0){
          apiString = '$apiString,';
        }
        count++;
        apiString = '${apiString}geography';
      }
    }
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'apiString' : apiString,
      'questionsNo': selected,
    });

  }

  int selected = 5;
  String diffLevel = "easy";

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
                  child: buttonContainer(5, noOfQuestion),
                  onTap: (){
                    noOfQuestion = 5;
                    setState(() {

                    });
                  },
                ),
                // const SizedBox(width: 20,),
                GestureDetector(
                  child: buttonContainer(10, noOfQuestion),
                  onTap: (){
                    noOfQuestion = 10;
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
                  child: buttonContainer(15, noOfQuestion),
                  onTap: (){
                    noOfQuestion = 15;
                    setState(() {

                    });
                  },
                ),
                GestureDetector(
                  child: buttonContainer(20, noOfQuestion),
                  onTap: (){
                    noOfQuestion = 20;
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
                difficulty('EASY'),
                difficulty('MEDIUM'),
                difficulty('HARD')
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

Widget buttonContainer(int noOfQuestions, int index){
  return Container(
    width: 170,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: (noOfQuestions == index) ? Colors.greenAccent : Colors.grey[900],
    ),
    child: Center(
      child: Text('$noOfQuestions',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget difficulty(String level){
  return Container(
    width: 120,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[900],
    ),
    child: Center(
      child: Text(level,
        style: const TextStyle(
          letterSpacing: 2,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}

