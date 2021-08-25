import 'package:flutter/material.dart';
import 'package:project_ui/widgets/custom_appbar.dart';
import 'package:project_ui/widgets/user_posts.dart';
import 'package:project_ui/widgets/trending.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            customAppbar(),
            Trending(),
            Posts(),
          ],
        ),
      ),
    );
  }
}
