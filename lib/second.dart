// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:user_profile/constants.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   static const String title = 'User Profile';

//   const MyApp({Key? key}) : super(key: key);

//   get header => null;

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: kSpacingUnit.w * 5),
//           header,
//           Expanded(
//               child: ListView(
//             children: const [
//               ProfileListItem(
//                 icon: LineAwesomeIcons.user_shield,
//                 text: 'Privecy',
//               ),
//               ProfileListItem(
//                 icon: LineAwesomeIcons.history,
//                 text: 'Purchase History',
//               ),
//               ProfileListItem(
//                 icon: LineAwesomeIcons.cog,
//                 text: 'Setting',
//               ),
//               ProfileListItem(
//                 icon: LineAwesomeIcons.user_plus,
//                 text: 'Invite a Friend',
//               ),
//               ProfileListItem(
//                 icon: LineAwesomeIcons.alternate_sign_out,
//                 text: 'Logout',
//                 hasNavigation: false,
//               ),
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }

// class ProfileListItem extends StatelessWidget {
//   final IconData icon;
//   // ignore: prefer_typing_uninitialized_variables
//   final text;
//   final bool hasNavigation;
    

//   const ProfileListItem({
//     Key? key, 
//     required this.icon, 
//     this.text, 
//     this.hasNavigation = true,
//     }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: kSpacingUnit.w * 5.5,
//       margin: EdgeInsets.symmetric(
//         horizontal: kSpacingUnit.w * 4,
//         ).copyWith(bottom: kSpacingUnit.w * 2,
//         ),
//         padding: EdgeInsets.symmetric(horizontal: kSpacingUnit.w * 2),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
//         color: Theme.of(context).backgroundColor,
//       ),
//       child: Row(
//         children: [
//         Icon(
//           icon,
//           size: kSpacingUnit.w *2.5,
//         ),
//         SizedBox(width: kSpacingUnit.w * 2.5),
//         Text(text,
//         style: kTitleTextStyle.copyWith(
//           fontWeight: FontWeight.w500,
//         ),
//         ),
//         const Spacer(),
//         if(hasNavigation)
//         Icon(
//           LineAwesomeIcons.angle_right,
//           size: kSpacingUnit.w *2.5,
//         ),
//       ],)
//     );
//   }
// }
