import 'package:linkedin/models/post_model.dart';
import 'package:linkedin/models/user_model.dart';

final List<UserModel> users = [
  UserModel(id: '0', name: 'john doe', userInfo: "electrical enginner"),
  UserModel(id: '1', name: 'jane git', userInfo: "mechanical enginner"),
  UserModel(id: '2', name: 'tom mil', userInfo: "computer enginner"),
  UserModel(id: '3', name: 'loy ling', userInfo: "contect creator"),
  UserModel(id: '4', name: 'peter r', userInfo: "online writer"),
  UserModel(id: '5', name: 'lucas yoh', userInfo: "actor"),
  UserModel(id: '5', name: 'lucas yoh', userInfo: "actor"),
];

final List<Post> posts = [
  Post(user: users[0], description: "Hello Everyone", imgUrl: "assets/images/cr3.jpg"),
  Post(user: users[1], description: "good evening", imgUrl: "assets/images/cr3.jpg"),
  Post(user: users[2], description: "Technology ...", imgUrl: "assets/images/cr3.jpg"),
  Post(user: users[3], description: "Job trends..", imgUrl: "assets/images/cr3.jpg"),
  Post(user: users[4], description: "#engineers", imgUrl: "assets/images/cr3.jpg"),
  Post(user: users[5], description: "more", imgUrl: "assets/images/cr3.jpg"),
];