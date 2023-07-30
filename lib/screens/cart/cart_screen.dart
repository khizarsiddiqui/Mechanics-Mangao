import 'package:flutter/material.dart';
import 'package:mechanics_mangao/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildAppBar(context),
          SliverFillRemaining(
            child: Body(),
          ),
        ],
      ),
      bottomNavigationBar: CheckoutCard(cartItems: demoCarts),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
      expandedHeight: 60.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        // title: Column(
        //   children: [
        //     Text(
        //       "Your Cart",
        //       style: TextStyle(color: Colors.black),
        //     ),
        //     Text(
        //       "${demoCarts.length} items",
        //       style: Theme.of(context).textTheme.bodyText2,
        //     ),
        //   ],
        // ),
        background: Image.asset(
          'assets/images/notification_header_image.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:mechanics_mangao/models/Cart.dart';
//
// import 'components/body.dart';
// import 'components/check_out_card.dart';
//
// class CartScreen extends StatelessWidget {
//   static String routeName = "/cart";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: Body(),
//       bottomNavigationBar: CheckoutCard(cartItems: demoCarts),
//     );
//   }
//
//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       title: Column(
//         children: [
//           Text(
//             "Your Cart",
//             style: TextStyle(color: Colors.black),
//           ),
//           Text(
//             "${demoCarts.length} items",
//             style: Theme.of(context).textTheme.bodySmall,
//           ),
//         ],
//       ),
//     );
//   }
// }
