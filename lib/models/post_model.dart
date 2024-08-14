
import 'package:linkedin/models/user_model.dart';

class Post {
  UserModel user;
  String? imgUrl;
  String? description;
  Post({required this.user, this.description, this.imgUrl});
}