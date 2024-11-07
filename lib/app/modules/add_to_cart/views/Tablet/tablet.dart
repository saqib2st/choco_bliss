part of '../add_to_cart_view.dart';

class Tablet extends GetView<AddToCartController> {
  double calculateSubtotal() {
    double subtotal = 0;
    for (var item in controller.cartItems) {
      subtotal += item.quantity * (double.tryParse(item.price ?? '') ?? 0.0);
    }
    return subtotal;
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = calculateSubtotal();
    double vat = subtotal * 0.05;
    double platformFee = 2.0;
    double totalPrice = subtotal + vat + platformFee;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Cart Items
            ...controller.cartItems
                .map((item) => CartItem(
              imageUrl: item.imageUrl,
              title: item.name,
              description: item.shortDescription,
              quantity: item.quantity,
              price: double.tryParse(item.price ?? '') ?? 0.0,
              onPressRemove: () {
                controller.deleteCartItem(item.id);
              },
              onAddItem: (){
                controller.onPressAddItem(item);
              },
              onPressRemoveItem: (){
                controller.onPressRemoveItem(item);
              },
            )),
            const SizedBox(height: 20),
            // Bill Summary
            BillSummary(
              subtotal: subtotal,
              vat: vat,
              platformFee: platformFee,
              totalPrice: totalPrice,
            ),
          ],
        ),
      ),
    );
  }
}
