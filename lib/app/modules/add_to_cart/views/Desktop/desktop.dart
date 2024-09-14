part of '../add_to_cart_view.dart';

class Desktop extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems = [
    // Dummy data for cart items
    {
      'imageUrl':
          'https://media.istockphoto.com/id/2153851108/photo/assorted-ice-cream-of-different-flavors-in-waffle-cones.webp?s=612x612&w=is&k=20&c=pL7Z9JL0Qan-fV0alfyZbrmalya7LBAUSQ0dzDtgU54=',
      'title': 'Item 1',
      'description': 'Description for item 1',
      'quantity': 2,
      'price': 10.0,
    },
    // Add more items...
  ];

  double calculateSubtotal() {
    double subtotal = 0;
    for (var item in cartItems) {
      subtotal += item['quantity'] * item['price'];
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
      appBar: AppBar(title: Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Cart Items Column (60% width)
            Expanded(
              flex: 6,
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  var item = cartItems[index];
                  return CartItem(
                    imageUrl: item['imageUrl'],
                    title: item['title'],
                    description: item['description'],
                    quantity: item['quantity'],
                    price: item['price'],
                  );
                },
              ),
            ),
            SizedBox(width: 20),
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
    );
  }
}
