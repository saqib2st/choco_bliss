import 'dart:html' as html;
import 'package:choco_bliss/app/data/models/catogery.dart';
import 'package:choco_bliss/app/data/models/items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:choco_bliss/app/services/overlay_services.dart';

class LandingController extends GetxController {
  final storage = GetStorage();
  final dio = Dio();
  RxDouble elevation = 0.0.obs;
  RxInt selectedLandlordtab = 0.obs;
  RxString selectedLandlordname = 'Efficient Listing'.obs;
  RxInt selectedFaq = 0.obs;
  RxBool isloggedIn = false.obs;
  bool isloaded = false;
  var imageListCarousel = <String>[].obs; // Observable list of images
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Category> categoriesList =<Category>[].obs;
  List<Item> itemsList =<Item>[].obs;
  Rx<Item> selectedItem = Item(id: '', name: '', price: '0.0', description: '', imageUrl: '', category: '', shortDescription: '', rating: 0.0).obs;

  Category? selectedCategory;




  String title = 'home';
  int selectedIndex = 0;


  Future<List<String>> getImages(String? dataBasePath) async {
    imageListCarousel.clear();
    try {
      DocumentSnapshot snapshot = await _firestore.collection(dataBasePath ?? 'slider').doc('images').get();

      if (snapshot.exists) {
        List<dynamic> fetchedListFromFirestore = snapshot.get('imageUrls');
        List<String> imageUrlsList = List<String>.from(fetchedListFromFirestore);
        imageListCarousel.value = imageUrlsList;
        return imageUrlsList;
      } else {
        print("Document does not exist");
        return [];
      }
    } catch (e) {
      print('Error getting images: $e');
    }
    return [];
  }



  // Function to download PDF from Firebase Storage
  void downloadPdf() {
    html.AnchorElement anchorElement = html.AnchorElement(href: "https://firebasestorage.googleapis.com/v0/b/chocobliss-e2bc5.appspot.com/o/pdf_menu%2Fmenu.pdf?alt=media&token=bc637f6a-847f-41ac-a6b3-d4dff9339241")
      ..setAttribute('download', 'document.pdf') // You can specify the file name here
      ..target = 'blank'; // Optional: Open in a new tab if needed

    anchorElement.click(); // Simulate the click to trigger the download
  }



  Future<List<Category>> fetchCategory() async{
    var snapShots = await _firestore.collection('categories').get();
    categoriesList = snapShots.docs.map((doc)=>Category.fromFirestore(doc)).toList();
    Get.forceAppUpdate();
    return categoriesList;
  }

  Future<List<Item>> fetchItem() async{
    var snapShots = await _firestore.collection('items').get();
    itemsList = snapShots.docs.map((doc)=>Item.fromFirestore(doc)).toList();
    return itemsList;
  }

  List<Item> filteredList = [];

  void fetchSelectedItems(String categoryName) {
    if (itemsList.isNotEmpty) {
      filteredList = itemsList.where((item) => item.category == categoryName).toList();
    }else{
      fetchItem();
    }
  }

  @override
  Future<void> onInit() async {
    Get.put(OverlayServices());
    await getImages('slider');
    await fetchItem();
    await fetchCategory();
    Get.forceAppUpdate();
    super.onInit();
  }
}
