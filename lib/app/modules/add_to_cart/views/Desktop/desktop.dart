part of '../add_to_cart_view.dart';

class Desktop extends GetView<AddToCartController> {

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

    return Obx(()=>Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cart Items Column (60% width)
            Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: controller.cartItems.length,
                itemBuilder: (context, index) {
                  var item = controller.cartItems[index];
                  return CartItem(
                    imageUrl: item.imageUrl,
                    title: item.name,
                    description: item.shortDescription,
                    quantity: item.quantity,
                    price: double.tryParse(item.price ?? '') ?? 0.0,
                    onPressRemove: (){
                      controller.deleteCartItem(item.id);
                    },
                    onAddItem: (){
                      controller.onPressAddItem(item);
                    },
                    onPressRemoveItem: (){
                      controller.onPressRemoveItem(item);
                    },
                  );
                },
              ),
            ),
            const SizedBox(width: 20),
            // Bill Summary Column (40% width)
            Expanded(
              flex: 4,
              child: BillSummary(
                subtotal: subtotal,
                vat: vat,
                platformFee: platformFee,
                totalPrice: totalPrice,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
