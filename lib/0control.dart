import 'package:flutter/material.dart';
import 'package:spajam_preapp/1FlightBottom.dart';
import 'package:spajam_preapp/1LodgoingBottom.dart';
import 'package:spajam_preapp/1MealBottom.dart';
import '0inputForm.dart';

class Control extends StatefulWidget {
  Control({Key? key}) : super(key: key);

  @override
  State<Control> createState() => ControlState();
}

class ControlState extends State<Control> {
  int pageNumber = 0;

  void _updatePageNum(int pageNum) {
    setState(() {
      pageNumber = pageNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double iconSize = 20;
    const Color iconColor = Colors.white70;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 91, 0, 86),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.0725),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('images/logo.png'),
                          width: 60,
                          height: 60,
                        ),
                        statusButton(
                            categoryName: "飛行機",
                            pageNum: 0,
                            status: pageNumber),
                        statusButton(
                            categoryName: "宿泊", pageNum: 1, status: pageNumber),
                        statusButton(
                            categoryName: "食事", pageNum: 2, status: pageNumber),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        if (pageNumber == 0) ...{
                          const InputForm(
                              "訪問者数",
                              Icon(Icons.person,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "出発地点を選択",
                              Icon(Icons.room,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "目的地を選択",
                              Icon(Icons.airplanemode_active,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "日付を選択",
                              Icon(Icons.calendar_month,
                                  size: iconSize, color: iconColor)),
                        } else if (pageNumber == 1) ...{
                          const InputForm(
                              "訪問者数",
                              Icon(Icons.person,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "日付を選択",
                              Icon(Icons.calendar_month,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "場所を選択",
                              Icon(Icons.hotel,
                                  size: iconSize, color: iconColor)),
                        } else if (pageNumber == 2) ...{
                          const InputForm(
                              "食堂数",
                              Icon(Icons.person,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "日付を選択",
                              Icon(Icons.calendar_month,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "時間を選択",
                              Icon(Icons.access_time,
                                  size: iconSize, color: iconColor)),
                          const InputForm(
                              "場所を選択",
                              Icon(Icons.restaurant_menu_outlined,
                                  size: iconSize, color: iconColor))
                        }
                      ],
                    ),
                  )
                ],
              ),
            ),
            if(pageNumber == 0)...{const FlightPage()}
            else if(pageNumber == 1)...{const LodgoingPage()}
            else if(pageNumber == 2)...{const MealPage()}
          ],
        ),
      ),
    );
  }

  Widget statusButton(
      {String? categoryName, int pageNum = 0, int status = 0, context}) {
    if (pageNum == status) {
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
              _updatePageNum(pageNum);
            },
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 0),
        child: SizedBox(
          width: 68,
          height: 30,
          child: OutlinedButton(
            child: Text(
              "$categoryName",
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
            style: OutlinedButton.styleFrom(
                primary: Colors.white,
                shape: const StadiumBorder(),
                side: const BorderSide(
                    width: 0, color: Color.fromARGB(255, 91, 0, 86))), // ごまかし
            onPressed: () {
              _updatePageNum(pageNum);
            },
          ),
        ),
      );
    }
  }
}
