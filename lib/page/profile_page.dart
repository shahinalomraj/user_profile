import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:user_profile/model/user.dart';
import 'package:user_profile/utils/user_prefernces.dart';
import 'package:user_profile/widget/appbar_widget.dart';
import 'package:user_profile/widget/button_widget.dart';
import 'package:user_profile/widget/numbers_widget.dart';
import '../constants.dart';
import '../widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  get header => null;

  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          // ignore: prefer_const_constructors
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );
  Widget buildAbout(User user) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
   child: Column(children: [
          SizedBox(height: kSpacingUnit.w * 5),
          header,
          Expanded(
              child: ListView(
            children: const [
              ProfileListItem(
                icon: LineAwesomeIcons.user_shield,
                text: 'Privecy',
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.history,
                text: 'Purchase History',
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.cog,
                text: 'Setting',
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.user_plus,
                text: 'Invite a Friend',
              ),
              ProfileListItem(
                icon: LineAwesomeIcons.alternate_sign_out,
                text: 'Logout',
                hasNavigation: false,
              ),
            ],
          ))
        ],
      ),
    );
  }


class ProfileListItem extends StatelessWidget {
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final text;
  final bool hasNavigation;
    

  const ProfileListItem({
    Key? key, 
    required this.icon, 
    this.text, 
    this.hasNavigation = true,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 4,
        ).copyWith(bottom: kSpacingUnit.w * 2,
        ),
        padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
        children: [
        Icon(
          icon,
          size: kSpacingUnit.w *2.5,
        ),
        SizedBox(width: kSpacingUnit.w * 2.5),
        Text(text,
        style: kTitleTextStyle.copyWith(
          fontWeight: FontWeight.w500,
        ),
        ),
        const Spacer(),
        if(hasNavigation)
        Icon(
          LineAwesomeIcons.angle_right,
          size: kSpacingUnit.w *2.5,
        ),
      ],)
    );
  }
}

   