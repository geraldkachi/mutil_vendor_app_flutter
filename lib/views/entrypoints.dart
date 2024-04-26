import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_food/constants/constants.dart';
import 'package:multi_vendor_food/controllers/tab_index_controllers.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor_food/views/cart/cart_page.dart';
import 'package:multi_vendor_food/views/home/home_page.dart';
import 'package:multi_vendor_food/views/profile/profile_page.dart';
import 'package:multi_vendor_food/views/search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static final List<Widget> _pageList = <Widget>[
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage(),
   
  ];
  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());

    return Obx(() => Scaffold(
          body: Center(
            child:  _pageList[controller.tabIndex],
          ),
          // _pageList.elementAt(controller.tabIndex.value),
          bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: kPrimary,
                    currentIndex: controller.tabIndex,
                    // currentIndex: _selectedIndex,
                    // onTap: _onItemTapped,
                    onTap: (value) => controller.setTabIndex = value,
                    elevation: 10,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    selectedItemColor: Colors.blueGrey,
                    selectedIconTheme: const IconThemeData(color: kSecondary),
                    unselectedItemColor: const Color(0xFF526480),
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    type: BottomNavigationBarType.fixed,
                    items: [
                      // BottomNavigationBarItem(icon:Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(icon: controller.tabIndex == 0 ? const Icon(AntDesign.appstore1): const Icon(AntDesign.appstore_o), label: 'Home'),
                      const BottomNavigationBarItem( icon: Icon(Icons.search), label: 'Search'),
                      const BottomNavigationBarItem(
                          icon: Badge(
                            label: Text('1'),
                            child: Icon(FontAwesome.opencart)
                            ), label: 'Cart'),
                      BottomNavigationBarItem(icon: controller.tabIndex == 3 ? const Icon(FontAwesome.user_circle) : const Icon(FontAwesome.user_circle_o), label: 'Profile'),
                    ],
                  ),
        )
    );
  }
}


// Stack(
//             children: [
//               _pageList[controller.tabIndex],
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Theme(
//                   data: Theme.of(context).copyWith(canvasColor: kPrimary),
//                   child: BottomNavigationBar(
//                     currentIndex: controller.tabIndex,
//                     // currentIndex: _selectedIndex,
//                     // onTap: _onItemTapped,
//                     onTap: (value) => controller.setTabIndex = value,
//                     elevation: 10,
//                     showSelectedLabels: false,
//                     showUnselectedLabels: false,
//                     selectedItemColor: Colors.blueGrey,
//                     selectedIconTheme: const IconThemeData(color: kSecondary),
//                     unselectedItemColor: const Color(0xFF526480),
//                     unselectedIconTheme:
//                         const IconThemeData(color: Colors.black38),
//                     type: BottomNavigationBarType.fixed,
//                     items: [
//                       // BottomNavigationBarItem(icon:Icon(Icons.home), label: 'Home'),
//                       BottomNavigationBarItem(icon: controller.tabIndex == 0 ? const Icon(AntDesign.appstore1): const Icon(AntDesign.appstore_o), label: 'Home'),
//                       const BottomNavigationBarItem(
//                           icon: Icon(Icons.search), label: 'Search'),
//                       const BottomNavigationBarItem(
//                           icon: Badge(
//                             label: Text('1'),
//                             child: Icon(FontAwesome.opencart)
//                             ), label: 'Cart'),
//                       BottomNavigationBarItem(icon: controller.tabIndex == 3 ? const Icon(FontAwesome.user_circle) : const Icon(FontAwesome.user_circle_o), label: 'Profile'),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),