import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'packages_screen.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PackagesScreen(),
              ),
            );
          },
          child: Text(
            "",
            style: TextStyle(color: Color(0xFFBBBBBB)),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
//
// import '../../../size_config.dart';
//
// class SectionTitle extends StatelessWidget {
//   const SectionTitle({
//     Key? key,
//     required this.title,
//     required this.press,
//   }) : super(key: key);
//
//   final String title;
//   final GestureTapCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(18),
//             color: Colors.black,
//           ),
//         ),
//         GestureDetector(
//           onTap: press,
//           child: Text(
//             "See More",
//             style: TextStyle(color: Color(0xFFBBBBBB)),
//           ),
//         ),
//       ],
//     );
//   }
// }
