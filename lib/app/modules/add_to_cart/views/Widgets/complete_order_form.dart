import 'package:choco_bliss/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:choco_bliss/app/modules/add_to_cart/views/Widgets/bill_summary_widget.dart';
import 'package:choco_bliss/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AddOrderForm extends GetView<AddToCartController> {
  const AddOrderForm({super.key});
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
    return Form(
      key: controller.formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Add Order', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            BillSummary(
              subtotal: subtotal,
              vat: vat,
              platformFee: platformFee,
              totalPrice: totalPrice,
              isShowConfirm: false,
            ),
            TextFormField(
              controller: controller.nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) => value!.isEmpty ? 'Please enter a name' : null,
            ),
            const SizedBox(height: 10),

            // Address field
            TextFormField(
              controller: controller.addressController,
              decoration: const InputDecoration(labelText: 'Address'),
              validator: (value) => value!.isEmpty ? 'Please enter an address' : null,
            ),
            const SizedBox(height: 10),

            // Phone number field
            TextFormField(
              controller: controller.phoneController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
              validator: (value) => value!.isEmpty ? 'Please enter a phone number' : null,
            ),
            const SizedBox(height: 10),

            // Email field
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) => value!.isEmpty ? 'Please enter an email' : null,
            ),
            const SizedBox(height: 10),

            // Second phone number field
            TextFormField(
              controller: controller.secondPhoneController,
              decoration: const InputDecoration(labelText: 'Second Phone'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),

            // Message note field
            TextFormField(
              controller: controller.messageNoteController,
              decoration: const InputDecoration(labelText: 'Message Note'),
              maxLines: 3,
            ),
            const SizedBox(height: 20),

            // Complete Order button
            ElevatedButton(
              onPressed: (){
                if(controller.cartItems.isNotEmpty) {
                  controller.submitOrder().then((_) async {
                  // context.pop();
                  // await Future.delayed(Duration.zero);
                  // if(context.mounted){
                  //   context.go('/');
                  // }
                });
                }
              },
              child: const Text('Complete Order'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
