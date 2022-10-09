import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  const Control({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.0725),
      child: Row(
        children: [
          Container(
            child: Image.asset('images/logo.png'),
            width: 60,
            height: 60,
          ),
          statusButton(categoryName: "飛行機"),
          statusButton(categoryName: "宿泊"),
          statusButton(categoryName: "食事")
        ],
      ),
    );
  }

  Widget statusButton({String? categoryName}) {
    // TODO -後からonPressedをつくる -自分のいる場所によって表示を変える
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 0),
      child: SizedBox(
        width: 68,
        height: 30,
        child: OutlinedButton(
          child: Text(
            "$categoryName",
            style: const TextStyle(fontSize: 12),
          ),
          style: OutlinedButton.styleFrom(
              primary: Colors.white,
              shape: const StadiumBorder(),
              side: const BorderSide(width: 2, color: Colors.white)),
          onPressed: () {
            print("pressed $categoryName");
          },
        ),
      ),
    );
  }
}
