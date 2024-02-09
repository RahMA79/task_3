import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String? imgPath;
  final String? name;

  Item({super.key, required this.imgPath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image(fit: BoxFit.cover, image: AssetImage('$imgPath')),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$name',
            style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
