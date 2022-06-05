import 'package:user_profile/model/user.dart';

class UserPreferences {
  static const myUser = const User(
    imagePath: "assets/images/avatar.png",
    name: "Sarah Abs",
    email: "sarah.abs@gmail.com",
    about:
        "Wikipedia is hosted by the Wikimedia Foundation, a non-profit organization that also hosts a range of other projects",
    isDarkMode: false,
  );
}
