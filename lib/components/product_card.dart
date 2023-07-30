import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mechanics_mangao/models/Product.dart';
import 'package:mechanics_mangao/screens/details/details_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 120,
    this.aspectRatio = 1.06,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(30),
        bottom: getProportionateScreenWidth(0),
        right: getProportionateScreenWidth(30),
        top: getProportionateScreenWidth(0),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Expanded(
            // Wrap the Column with Expanded (updated)
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.00,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Hero(
                      tag: product.id.toString(),
                      child: Image.asset(product.images[0]),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\Rs ${product.price}",
                          style: TextStyle(
                            fontSize: (getProportionateScreenWidth(15)),
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColor,
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(getProportionateScreenWidth(6)),
                            height: getProportionateScreenWidth(28),
                            width: getProportionateScreenWidth(28),
                            decoration: BoxDecoration(
                              color: product.isFavourite
                                  ? kPrimaryColor.withOpacity(0.15)
                                  : kSecondaryColor.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/Heart Icon_2.svg",
                              color: product.isFavourite
                                  ? Color(0xFFFF4848)
                                  : Color(0xFFDBDEE4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mechanics_mangao/models/Product.dart';
// import 'package:mechanics_mangao/screens/details/details_screen.dart';
//
// import '../constants.dart';
// import '../size_config.dart';
//
// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key? key,
//     this.width = 120,
//     this.aspectRatio = 1.06,
//     required this.product,
//   }) : super(key: key);
//
//   final double width, aspectRatio;
//   final Product product;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(30),bottom: getProportionateScreenWidth(0),
//           right:getProportionateScreenWidth(30) ,top:getProportionateScreenWidth(0)),
//       child: SizedBox(
//         width: getProportionateScreenWidth(width),
//         child: GestureDetector(
//           onTap: () => Navigator.pushNamed(
//             context,
//             DetailsScreen.routeName,
//             arguments: ProductDetailsArguments(product: product),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(
//                 aspectRatio: 1.00,
//                 child: Container(
//                   padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//                   decoration: BoxDecoration(
//                     color: kSecondaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Hero(
//                     tag: product.id.toString(),
//                     child: Image.asset(product.images[0]),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 product.title,
//                 style: TextStyle(color: Colors.black),
//                 maxLines: 2,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "\Rs ${product.price}",
//                         style: TextStyle(
//                           fontSize: (getProportionateScreenWidth(15)),
//                           fontWeight: FontWeight.w600,
//                           color: kPrimaryColor,
//                         ),
//                       ),
//                       InkWell(
//                         borderRadius: BorderRadius.circular(30),
//                         onTap: () {},
//                         child: Container(
//                           padding: EdgeInsets.all(getProportionateScreenWidth(6)),
//                           height: getProportionateScreenWidth(28),
//                           width: getProportionateScreenWidth(28),
//                           decoration: BoxDecoration(
//                             color: product.isFavourite
//                                 ? kPrimaryColor.withOpacity(0.15)
//                                 : kSecondaryColor.withOpacity(0.1),
//                             shape: BoxShape.circle,
//                           ),
//                           child: SvgPicture.asset(
//                             "assets/icons/Heart Icon_2.svg",
//                             color: product.isFavourite
//                                 ? Color(0xFFFF4848)
//                                 : Color(0xFFDBDEE4),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
