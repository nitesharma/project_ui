import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project_ui/model/model.dart';
import 'package:velocity_x/velocity_x.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 4,
        itemCount: post.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, i) {
          final Updates posts = post[i];
          return Material(
            elevation: 8.0,
            borderRadius: BorderRadius.circular(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage(posts.imgPost),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: posts.user.name,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                text: ' ' + posts.caption,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                      2.widthBox,
                      CircleAvatar(
                        backgroundImage: AssetImage(posts.user.imgUrl),
                        radius: 20.0,
                      ),
                    ],
                  ),
                ),
                10.widthBox,
                Container(
                    padding: EdgeInsets.only(left: 10, bottom: 5),
                    child: Text(
                      posts.time,
                      style: TextStyle(color: Colors.redAccent, fontSize: 10),
                    )),
              ],
            ),
          );
        },
        staggeredTileBuilder: (i) =>
            new StaggeredTile.count(2, i.isEven ? 3 : 4),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
