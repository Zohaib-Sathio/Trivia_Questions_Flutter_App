import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool checkValue = true;
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
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('Option 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                // const SizedBox(width: 20,),
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('Option 2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('Option 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(width: 20,),
                Container(
                  width: 170,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[900],
                  ),
                  child: const Center(
                    child: Text('Option 4',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('CATEGORIES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent
                  ),
                  child: CheckboxListTile(
                    title: Text("fsf text"),
                    value: checkValue,
                    onChanged: (newValue) {
                    setState(() {
                      checkValue = !checkValue;
                    });
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                    ),

                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
