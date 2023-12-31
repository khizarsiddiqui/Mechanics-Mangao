import 'package:flutter/widgets.dart';
import 'package:mechanics_mangao/screens/home/components/package_details2.dart';
import 'package:provider/provider.dart';
import 'package:mechanics_mangao/screens/cart/cart_screen.dart';
import 'package:mechanics_mangao/screens/complete_profile/complete_profile_screen.dart';
import 'package:mechanics_mangao/screens/details/details_screen.dart';
import 'package:mechanics_mangao/screens/forgot_password/forgot_password_screen.dart';
import 'package:mechanics_mangao/screens/home/components/package_details.dart';
import 'package:mechanics_mangao/screens/home/home_screen.dart';
import 'package:mechanics_mangao/screens/otp/otp_screen.dart';
import 'package:mechanics_mangao/screens/profile/profile_screen.dart';
import 'package:mechanics_mangao/screens/shop/shop_screen.dart';
import 'package:mechanics_mangao/screens/sign_in/sign_in_screen.dart';
import 'package:mechanics_mangao/screens/splash/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'package:mechanics_mangao/providers/notification_screen.dart';
import 'package:mechanics_mangao/screens/home/components/package_details.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ShopScreen.routeName: (context) => ShopScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  PackageDetailsPage.routeName: (context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return PackageDetailsPage(
      title: args['title'],
      description: args['description'],
      price: args['price'],
    );
  },
  PackageDetails2Page.routeName: (context) {
    final Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return PackageDetails2Page(
      title: args['title'],
      description: args['description'],
      price: args['price'],
    );
  },
};
