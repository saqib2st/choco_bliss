import 'dart:async';

import 'package:choco_bliss/app/data/models/items.dart';
import 'package:choco_bliss/app/data/models/static_data_model/order.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AddToCartController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  RxList<Item> cartItems = <Item>[].obs;

  Timer? _debounce;

  final formKey = GlobalKey<FormState>();
// Text controllers
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final secondPhoneController = TextEditingController();
  final messageNoteController = TextEditingController();

  // Debounce duration
  final Duration debounceDuration = const Duration(seconds: 2);

  void fetchCartItems() {
    _firestore.collection('cart').snapshots().listen((snapshot) {
      cartItems.value = snapshot.docs.map((doc) => Item.fromFirestore(doc)).toList();
    });
    Get.forceAppUpdate();
  }

  // Add a new cart item
  Future<void> addCartItem(Item item) async {
    // AppLoader.showLoader();
    await _firestore.collection('cart').add(item.toMap());
    fetchCartItems();
    Fluttertoast.showToast(
        msg: "Item Added to Cart Successfully",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 20.0
    );
  }

  // Update an existing cart item
  Future<void> updateCartItem(Item item) async {
    _debounce?.cancel();
    _debounce = Timer(debounceDuration, () async {
      await _firestore.collection('cart').doc(item.id).update(item.toMap());
    });
  }

  // Delete a cart item
  Future<void> deleteCartItem(String id) async {
    await _firestore.collection('cart').doc(id).delete();
    fetchCartItems();
  }

  Future<void> clearCart() async {
    try {
      // Get all documents in the 'cart' collection
      final querySnapshot = await _firestore.collection('cart').get();

      // Delete each document in the collection
      for (var doc in querySnapshot.docs) {
        await doc.reference.delete();
      }

      print("Cart cleared successfully.");
    } catch (e) {
      print("Failed to clear cart: $e");
    }
  }



  void onPressAddItem(Item item){
    item.quantity = item.quantity +1;
    Get.forceAppUpdate();
    updateCartItem(item);
  }

  void onPressRemoveItem (Item item){
    if(item.quantity > 1){
      item.quantity = item.quantity -1;
      updateCartItem(item);
      Get.forceAppUpdate();
      updateCartItem(item);
    }else{
      deleteCartItem(item.id);
    }
  }
  Future<void> createOrder(Orders order) async {
    try {
      await _firestore.collection('orders').add(order.toMap());
      clearCart();
      Fluttertoast.showToast(
          msg: "Order Placed Successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0
      );
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Failed to created Order",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0
      );
    }
  }


  Future<void> submitOrder() async {
    if (cartItems.isNotEmpty) {
      if (formKey.currentState!.validate()) {
        Orders order = Orders(
          name: nameController.text,
          email: emailController.text,
          address: addressController.text,
          phoneNumber: phoneController.text,
          message: messageNoteController.text,
          orderStatus: 'Pending',
          dateCreation: Timestamp.now().toString(),
          totalPrice: cartItems.fold(0, (total, item) => total + (double.tryParse(item.price) ??0.0)* (double.tryParse(item.quantity.toString())?? 0.0)),
          items: cartItems,
        );

        await createOrder(order);
      }
    }else{
      Fluttertoast.showToast(
          msg: "Add items to cart first!",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20.0
      );
    }
  }






  @override
  void onReady() {
    fetchCartItems();
    super.onReady();
  }

  // Dispose controllers when not in use
  @override
  void onClose() {
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    secondPhoneController.dispose();
    messageNoteController.dispose();
    super.onClose();
  }
}
