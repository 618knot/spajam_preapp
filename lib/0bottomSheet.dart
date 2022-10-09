import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet(
      this.topText, this.size, this.images, this.title, this.subtitle,
      {Key? key})
      : super(key: key);
  final String? topText;
  final double size;
  final List<Widget> images;
  final List<String> title;
  final List<String> subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white),
      height: MediaQuery.of(context).size.height * size,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15, bottom: 0),
                  child: Text("$topText"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * (size - 0.08),
            child: ListView(
              children: [
                for (int index = 0; index < 12; index++) ...{
                  ListTile(
                    leading: ExcludeSemantics(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: images[index]),
                    ),
                    title: Text(title[index]),
                    subtitle: Text(subtitle[index]),
                  )
                }
              ],
            ),
          )
        ],
      ),
    );
  }
}
