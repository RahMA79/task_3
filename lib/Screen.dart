import 'package:flutter/material.dart';
import 'package:task_3/Item.dart';

class MyScreen extends StatelessWidget {
  final List Items = [
    Item(imgPath: 'assets/Business.jpeg', name: 'Business'),
    Item(imgPath: 'assets/politics.jpeg', name: 'Politics'),
    Item(imgPath: 'assets/Programming.jpeg', name: 'Programming'),
    Item(imgPath: 'assets/Sports.jpeg', name: 'Sports'),
    Item(imgPath: 'assets/Business.jpeg', name: 'Business'),
    Item(imgPath: 'assets/politics.jpeg', name: 'Politics'),
    Item(imgPath: 'assets/Programming.jpeg', name: 'Programming'),
    Item(imgPath: 'assets/Sports.jpeg', name: 'Sports'),
    Item(imgPath: 'assets/Business.jpeg', name: 'Business'),
    Item(imgPath: 'assets/politics.jpeg', name: 'Politics'),
    Item(imgPath: 'assets/Programming.jpeg', name: 'Programming'),
    Item(imgPath: 'assets/Sports.jpeg', name: 'Sports'),
  ];

  MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'News App',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                shadows: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 1)
                ]),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(
            top: 8,
            right: 16,
            left: 16,
          ),
          child: GridView.builder(

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
              ),
              itemCount: Items.length,
              itemBuilder: (context, index) {
                return Items[index];
              }),
        ),
      ),
    );
  }
}
