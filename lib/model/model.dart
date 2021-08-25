import 'package:project_ui/model/user.dart';

class Updates {
  final User user;
  final String caption;
  final String imgPost;
  final String time;

  Updates(
      {required this.time,
      required this.user,
      required this.caption,
      required this.imgPost});
}

final User ingrid =
    User(id: 1, name: "Ingrid Bergman", imgUrl: 'assets/01.jpg');
final User meryl = User(id: 2, name: "Meryl Streep", imgUrl: 'assets/04.jpg');
final User hanah = User(id: 3, name: "Hanah Jones", imgUrl: 'assets/02.jpg');
final User misa = User(id: 4, name: "Misa Amane", imgUrl: 'assets/05.jpg');
final User jason = User(id: 5, name: "Jason Cruz", imgUrl: 'assets/03.jpg');
final User meghan =
    User(id: 6, name: "Meghan Trainor", imgUrl: 'assets/08.jpg');
final User nize = User(id: 7, name: "Nize Emirshah", imgUrl: 'assets/07.jpg');
final User alex = User(id: 8, name: "Alex Morgan", imgUrl: 'assets/06.jpg');

List<Updates> post = [
  Updates(
      user: ingrid,
      caption: "Selfie Dare Accepted",
      imgPost: 'assets/01.jpg',
      time: '23 Min Ago'),
  Updates(
    user: meryl,
    caption: 'Pose in the lockdown without studio',
    imgPost: 'assets/04.jpg',
    time: '23 Min Ago',
  ),
  Updates(
    user: hanah,
    caption: 'Photobooth at home done with #sis',
    imgPost: 'assets/02.jpg',
    time: '23 Min Ago',
  ),
  Updates(
    user: misa,
    caption: 'Flying kiss to my ex boyfriend #dare',
    imgPost: 'assets/05.jpg',
    time: '23 Min Ago',
  ),
  Updates(
    user: jason,
    caption: '360 Degree tornado kick #challenge',
    imgPost: 'assets/03.jpg',
    time: '23 Min Ago',
  ),
  Updates(
    user: meghan,
    caption: 'All about the bass #dare',
    imgPost: 'assets/08.jpg',
    time: '23 Min Ago',
  ),
  Updates(
      time: '23 Min Ago',
      user: nize,
      caption: 'Dont need caption..',
      imgPost: 'assets/07.jpg'),
  Updates(
      time: '23 Min Ago',
      user: alex,
      caption: 'Caption',
      imgPost: 'assets/06.jpg')
];
