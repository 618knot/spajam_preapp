import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  const Control({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 0, 105),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Image.asset('images/logo.png'),
                    width: 100,
                    height: 100,
                  ),
                  statusButton(categoryName: "飛行機"),
                  statusButton(categoryName: "宿泊"),
                  statusButton(categoryName: "食事")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget statusButton({String? categoryName}) { // TODO -後からonPressedをつくる -自分のいる場所によって表示を変える
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 20),
      child: SizedBox(
        width: 70,
        height: 30,
        child: OutlinedButton(
          child: 
          Text(
            "$categoryName",
            style: TextStyle(fontSize: 12),
            ),
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            shape: const StadiumBorder(),
            side: const BorderSide(width: 2, color: Colors.white)
          ),
          onPressed: () {
            print("pressed $categoryName");
          },
        ),
      ),
    );
  }
}
