import 'package:flutter/material.dart';
import 'package:mechanics_mangao/components/product_card.dart';
import 'package:mechanics_mangao/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class ShopProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Shop Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          physics: NeverScrollableScrollPhysics(), // Disable scrolling in the grid
          children: List.generate(
            demoProducts.length,
                (index) {
              if (demoProducts[index].isPopular)
                return ProductCard(product: demoProducts[index]);
              return SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}

// class PopularProducts extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SectionTitle(title: "Popular Products", press: () {}),
//         ),
//         SizedBox(height: getProportionateScreenWidth(20)),
//         SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Column(
//                     children: [
//                       ...List.generate(
//                         demoProducts.length,
//                         (index) {
//                           if (demoProducts[index].isPopular)
//                             return ProductCard(product: demoProducts[index]);
//                           return SizedBox
//                               .shrink(); // here by default width and height is 0
//                         },
//                       ),
//                       SizedBox(width: getProportionateScreenWidth(20)),
//                         ],
//                       ),
//           ),
//     ]);
//   }
// }
