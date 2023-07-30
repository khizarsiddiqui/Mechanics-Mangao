import 'package:flutter/material.dart';
import 'package:mechanics_mangao/components/default_button.dart';
import 'package:mechanics_mangao/models/Product.dart';
import 'package:mechanics_mangao/size_config.dart';
import 'package:collection/collection.dart';
import 'package:mechanics_mangao/models/Cart.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _itemNo = 1;

  void _addToCart(BuildContext context, Product product) {
    // Find the Cart for the product in the cart list
    Cart? cartItem = demoCarts.firstWhereOrNull((item) => item.product.id == product.id);

    if (cartItem != null) {
      // If the product is already in the cart, increment the numOfItem
      cartItem.numOfItem += _itemNo;
    } else {
      // If the product is not in the cart, create a new Cart item and add it to the cart list
      demoCarts.add(Cart(product: product, numOfItem: _itemNo));
    }

    // Reset the item count to zero
    setState(() {
      _itemNo = 0;
    });

    // Show a snackbar to inform the user that the item was added to the cart
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${product.title} added to cart')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(
                      product: widget.product,
                      onItemCountChanged: (itemCount) {
                        setState(() {
                          _itemNo = itemCount;
                        });
                      },
                    ),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add To Cart",
                          press: () {
                            // for adding items
                            _addToCart(context, widget.product);
                            // print('Item added to cart!');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:mechanics_mangao/components/default_button.dart';
// import 'package:mechanics_mangao/models/Product.dart';
// import 'package:mechanics_mangao/size_config.dart';
// import 'package:collection/collection.dart';
// import 'package:mechanics_mangao/models/Cart.dart';
//
// import 'color_dots.dart';
// import 'product_description.dart';
// import 'top_rounded_container.dart';
// import 'product_images.dart';
//
// class Body extends StatelessWidget {
//   final Product product;
//
//   const Body({Key? key, required this.product}) : super(key: key);
//
//   // function for adding items
//   void _addToCart(BuildContext context, Product product) {
//     // Find the Cart for the product in the cart list
//     Cart? cartItem = demoCarts.firstWhereOrNull((item) => item.product.id == product.id);
//
//     if (cartItem != null) {
//       // If the product is already in the cart, increment the numOfItem
//       cartItem.numOfItem += 1;
//     } else {
//       // If the product is not in the cart, create a new Cart item and add it to the cart list
//       demoCarts.add(Cart(product: product, numOfItem: 1));
//     }
//
//     // Show a snackbar to inform the user that the item was added to the cart
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('${product.title} added to cart')),
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ProductImages(product: product),
//         TopRoundedContainer(
//           color: Colors.white,
//           child: Column(
//             children: [
//               ProductDescription(
//                 product: product,
//                 pressOnSeeMore: () {},
//               ),
//               TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: SizeConfig.screenWidth * 0.15,
//                           right: SizeConfig.screenWidth * 0.15,
//                           bottom: getProportionateScreenWidth(40),
//                           top: getProportionateScreenWidth(15),
//                         ),
//                         child: DefaultButton(
//                           text: "Add To Cart",
//                           press: () {
//                             // for adding items
//                             _addToCart(context, product);
//                             // print('Item added to cart!');
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
