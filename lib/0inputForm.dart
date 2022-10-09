import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  const InputForm(this.hintText, this.icon, {Key? key}) : super(key: key);
  final String? hintText;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 110, 0, 105),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 12, color: Colors.white70),
            prefixIcon: icon,
            
            ),
        ),
      ),
    );
  }
}
