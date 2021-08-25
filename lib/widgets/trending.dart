import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  int selected = 0;

  List tags = ["#Trending", '#Food', '#Activity', '#Fashion', '#Shots'];
  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Container(
      height: 70,
      child: ListView.builder(
        itemCount: tags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                width: s.width * 0.3,
                height: s.height * 0.2,
                decoration: BoxDecoration(
                    color: selected == index ? Color(0xfffc464a) : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Vx.fuchsia900)),
                child: Center(
                    child: Text(
                  tags[index],
                  style: TextStyle(
                    color: selected == index ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
