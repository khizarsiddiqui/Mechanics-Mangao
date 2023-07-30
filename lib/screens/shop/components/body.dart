import 'package:flutter/material.dart';
import 'package:mechanics_mangao/screens/home/components/section_title.dart';

import '../../../size_config.dart';

import 'shop_header.dart';
import 'shop_product.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            ShopHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            ShopProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
