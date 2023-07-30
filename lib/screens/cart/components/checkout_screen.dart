import 'package:flutter/material.dart';
import 'package:mechanics_mangao/models/Cart.dart';
import 'package:lottie/lottie.dart';

class CheckoutScreen extends StatefulWidget {
  final List<Cart> cartItems; // Assuming you have a Cart class as defined in your cart.dart file.

  CheckoutScreen({required this.cartItems});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String paymentMethod = "Cash on Delivery";
  String address = "";
  int deliveryDuration = 1; // Default delivery duration, you can set this based on your requirements.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout Details"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              "Bought Items",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                final cart = widget.cartItems[index];
                final product = cart.product;

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(product.images[0]), // Assuming the first image is the main product image.
                  ),
                  title: Text(product.title),
                  subtitle: Text("Quantity: ${cart.numOfItem}"),
                  trailing: Text("\Rs ${product.price * cart.numOfItem}"), // Total price for this item (price * quantity).
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              "Payment Method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            buildPaymentMethodOptions(), // Display the options for payment method.
            SizedBox(height: 16),
            Text(
              "Address",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            buildAddressTextField(), // Allow the user to enter their address.
            SizedBox(height: 16),
            Text(
              "Delivery Estimated Duration",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            buildDeliveryDurationText(), // Display the estimated delivery duration.
            // You can add more details as needed.
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              _placeOrder(); // Call the function to place the order and navigate to the success screen.
            },
            icon: Icon(Icons.shopping_bag),
            label: Text("Place Order"), // The label text for the button.
          ),
        ],
      ),
    );
  }

  // Function to place the order and navigate to the success screen
  void _placeOrder() {
    // Perform any order processing or API calls here, if needed.

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderSuccessScreen(),
      ),
    );
  }
  Widget buildPaymentMethodOptions() {
    // Define the options for payment method here. You can use a dropdown or radio buttons.
    return DropdownButton<String>(
      value: paymentMethod,
      onChanged: (newValue) {
        setState(() {
          paymentMethod = newValue!;
        });
      },
      items: [
        "Cash on Delivery",
        "Card Payment (Visa)",
        "Card Payment (MasterCard)",
        "PayPal",
        // Add more options as needed.
      ].map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget buildAddressTextField() {
    // Allow the user to enter their address details here.
    return TextField(
      onChanged: (newValue) {
        setState(() {
          address = newValue;
        });
      },
      decoration: InputDecoration(
        hintText: "Enter your address",
      ),
    );
  }

  Widget buildDeliveryDurationText() {
    // Calculate the delivery duration based on the number of items in the cart.
    int totalItems = widget.cartItems.fold(0, (sum, cart) => sum + cart.numOfItem);
    deliveryDuration = 1 + totalItems ~/ 5; // For every 5 items, add 1 day to the delivery duration.

    return Text("$deliveryDuration business days");
  }
}
class OrderSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Placed"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animations/order_success_animation.json',
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              "Order Placed Successfully!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                      (route) => false,
                );
              },
              child: Text(
                "Continue Shopping",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue, // Customize the color as needed.
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class CheckoutScreen extends StatefulWidget {
//   final List<Cart> cartItems;
//
//   CheckoutScreen({required this.cartItems});
//
//   @override
//   _CheckoutScreenState createState() => _CheckoutScreenState();
// }
//
// class _CheckoutScreenState extends State<CheckoutScreen> {
//   String paymentMethod = "Cash on Delivery";
//   String address = "";
//   int deliveryDuration = 1; // Default delivery duration, you can set this based on your requirements.
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Checkout Details"),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16),
//             Text(
//               "Bought Items",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: widget.cartItems.length,
//               itemBuilder: (context, index) {
//                 final cart = widget.cartItems[index];
//                 final product = cart.product;
//
//                 return ListTile(
//                   leading: CircleAvatar(
//                     backgroundImage: NetworkImage(product.images[0]),
//                   ),
//                   title: Text(product.title),
//                   subtitle: Text("Quantity: ${cart.numOfItem}"),
//                   trailing: Text("\Rs ${product.price * cart.numOfItem}"), // Total price for this item (price * quantity).
//                 );
//               },
//             ),
//             SizedBox(height: 16),
//             Text(
//               "Payment Method",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             buildPaymentMethodOptions(), // Display the options for payment method.
//             SizedBox(height: 16),
//             Text(
//               "Address",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             buildAddressTextField(), // Allow the user to enter their address.
//             SizedBox(height: 16),
//             Text(
//               "Delivery Estimated Duration",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             buildDeliveryDurationText(), // Display the estimated delivery duration.
//             // You can add more details as needed.
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget buildPaymentMethodOptions() {
//     // Define the options for payment method here. You can use a dropdown or radio buttons.
//     return DropdownButton<String>(
//       value: paymentMethod,
//       onChanged: (newValue) {
//         setState(() {
//           paymentMethod = newValue!;
//         });
//       },
//       items: [
//         "Cash on Delivery",
//         "Card Payment (Visa)",
//         "Card Payment (MasterCard)",
//         "PayPal",
//         // Add more options as needed.
//       ].map<DropdownMenuItem<String>>((value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
//
//   Widget buildAddressTextField() {
//     // Allow the user to enter their address details here.
//     return TextField(
//       onChanged: (newValue) {
//         setState(() {
//           address = newValue;
//         });
//       },
//       decoration: InputDecoration(
//         hintText: "Enter your address",
//       ),
//     );
//   }
//
//   Widget buildDeliveryDurationText() {
//     // Calculate the delivery duration based on the number of items in the cart.
//     int totalItems = widget.cartItems.fold(0, (sum, cart) => sum + cart.numOfItem);
//     deliveryDuration = 1 + totalItems ~/ 5; // For every 5 items, add 1 day to the delivery duration.
//
//     return Text("$deliveryDuration business days");
//   }
// }
