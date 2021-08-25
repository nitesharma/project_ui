import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customAppbar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 15.0,
          backgroundImage: AssetImage('assets/01.jpg'),
        ),
        "Feed".text.xl2.bold.make(),
        120.widthBox,
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.mail_outlined, color: Colors.black),
        ),
      ],
    ),
  );
}
