import 'package:flutter/material.dart';
import 'package:mechanics_mangao/components/product_card.dart';
import 'package:mechanics_mangao/models/Product.dart';

import '../../../size_config.dart';
import 'catalytic_converter_details.dart';
import 'engine_service_details.dart';
import 'engine_tuning_details.dart';
import 'interor_cleaning_details.dart';
import 'section_title2.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Service Packages", press: () {}, ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // Disable scrolling in the grid
          children: [
            PackageCard(
              title: 'Engine Service',
              imagePath: 'assets/images/banner1.jpg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EngineServiceDetails(),
                  ),
                );
              },
            ),
            PackageCard(
              title: 'Engine Tuning',
              imagePath: 'assets/images/banner2.jpg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EngineTuningDetails(),
                  ),
                );
              },
            ),
            PackageCard(
              title: 'Catalytic Converter Cleaning',
              imagePath: 'assets/images/banner3.jpg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CatalyticConverterDetails(),
                  ),
                );
              },
            ),
            PackageCard(
              title: 'Interior Cleaning',
              imagePath: 'assets/images/banner4.jpg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InteriorCleaningDetails(),
                  ),
                );
              },
            )
            // Add more PackageCard widgets for other packages
          ],
        ),
        // GridView.count(
        //   shrinkWrap: true,
        //   crossAxisCount: 2,
        //   physics: NeverScrollableScrollPhysics(), // Disable scrolling in the grid
        //   children: List.generate(
        //     demoProducts.length,
        //         (index) {
        //       if (demoProducts[index].isPopular)
        //         return ProductCard(product: demoProducts[index]);
        //       return SizedBox.shrink();
        //     },
        //   ),
        // ),
      ],
    );
  }
}

class PackageCard extends StatelessWidget {
  const PackageCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.press,
  }) : super(key: key);

  final String title;
  final String imagePath;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
         child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            // Add a beautiful and eye-catching background theme
            // Customize the card's UI as per your design requirements
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4), // Use a slightly transparent black background
                  borderRadius: BorderRadius.circular(8), // Rounded corners for the background
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
         ),
        ),
      ),
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
