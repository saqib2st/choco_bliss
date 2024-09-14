import 'package:dio/dio.dart';
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

  String title = 'home';
  int selectedIndex = 0;

  final RxList<String> carouselImagesList = [
    'https://cdn.stocksnap.io/img-thumbs/960w/wireframe-sketch_2QBWAOT5KL.jpg',
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Sunset Image 21
    'https://images.unsplash.com/photo-1494526585095-c41746248156?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Forest Image 22
    'https://images.unsplash.com/photo-1519995451813-35e3ca9a05b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Night Sky Image 23
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // River Image 24
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Sunrise Image 25
    'https://images.unsplash.com/photo-1500336624523-d727130c3328?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Snow Image 26
    'https://images.unsplash.com/photo-1513151233558-d860c5398176?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Beach Image 27
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Lake Image 28
    'https://images.unsplash.com/photo-1489584023891-7f108a10b3c8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Waterfall Image 29
    'https://images.unsplash.com/photo-1486915309851-b0cc1f8a008e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Mountains Image 30
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Flowers Image 31
    'https://images.unsplash.com/photo-1517832207067-4db24a2ae47c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Desert 32
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Canyon Image 33
    'https://images.unsplash.com/photo-1486591978090-72f76a18f618?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Valley Image 34
    'https://images.unsplash.com/photo-1517832207067-4db24a2ae47c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Prairie Image 35
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Volcano Image 36
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Island Image 37
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Forest Path Image 38
    'https://images.unsplash.com/photo-1486591978090-72f76a18f618?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Desert Landscape Image 39
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Jungle Image 40
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Hills Image 41
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Rocky Beach Image 42
    'https://images.unsplash.com/photo-1486591978090-72f76a18f618?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // River Image 43
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Stream Image 44
    'https://images.unsplash.com/photo-1486591978090-72f76a18f618?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Swamp Image 45
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Glacier Image 46
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Cliff Image 47
    'https://images.unsplash.com/photo-1486591978090-72f76a18f618?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Mesa Image 48
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Plateau Image 49
    'https://images.unsplash.com/photo-1517638851339-4af30a1c0f81?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Forest Clearing Image 50
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
    'https://images.unsplash.com/photo-1607746882042-944635dfe10e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDJ8fG5hdHVyZXxlbnwwfHx8fDE2MzQwMDYxMjM&ixlib=rb-1.2.1&q=80&w=200', // Small Image 1
    'https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=350', // Medium Image 2
    'https://cdn.pixabay.com/photo/2020/10/14/13/38/road-5659409_1280.jpg', // Large Image 3
    'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDV8fGxhcHRvcHN8ZW58MHx8fHwxNjM0MDA2Mjc1&ixlib=rb-1.2.1&q=80&w=1600', // Extra Large Image 4
    'https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png', // Ultra High-Resolution Image 5
    'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fG5hdHVyZXxlbnwwfHx8fDE2MzQwMDY1MzI&ixlib=rb-1.2.1&q=80&w=500&h=500', // Square Image 6
    'https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=2000&w=5000', // Panoramic Image 7
    'https://images.unsplash.com/photo-1587614382346-b5a9d16a0b5d?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fG5hdHVyZXxlbnwwfHx8fDE2MzQwMDY1MzI&ixlib=rb-1.2.1&q=80&w=500&h=500', // Thumbnail Image 8
    'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Nature Image 9
    'https://images.unsplash.com/photo-1521747116042-5a810fda9664?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', // Abstract Image 10
    'https://images.unsplash.com/photo-1532074205216-dc966dfd6f76?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', // Food Image 11
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', // Cityscape Image 12
    'https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', // Architecture Image 13
    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg', // Tree Image 14
    'https://cdn.pixabay.com/photo/2016/03/09/09/17/space-1245690_1280.jpg', // Space Image 15
    'https://images.unsplash.com/photo-1522204506040-4024c0b5a263?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Landscape Image 16
    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80', // Ocean Image 17
    'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Tech Image 18
    'https://images.unsplash.com/photo-1564866657317-6e2b8d49b52c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', // Mountain Image 19
    'https://images.unsplash.com/photo-1524178232363-1fb2b075b655?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', // Desert Image 20
  ].obs;

  @override
  void onInit() {
    Get.put(OverlayServices());
    super.onInit();
  }
}
