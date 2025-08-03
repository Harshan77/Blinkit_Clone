import 'package:blinkit_clone/screens/BestSeller.dart';
import 'package:blinkit_clone/screens/ganesh_festival_offer.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/categories.dart';
import 'package:flutter/rendering.dart';
import 'package:blinkit_clone/screens/Lakme.dart';
import 'package:blinkit_clone/screens/Renee.dart';
import 'package:blinkit_clone/screens/FreshFace.dart';
import 'package:blinkit_clone/screens/Lakme_Cards.dart';
import 'dart:async';
import 'package:blinkit_clone/screens/Banner_Text.dart';
import 'package:blinkit_clone/screens/GroceriesList.dart';
import 'package:blinkit_clone/screens/ProfilePage.dart';
import 'package:blinkit_clone/screens/WalletPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  ScrollController _scrollController = ScrollController();
  bool _isBottomBarVisible = true;
  bool _showPoweredBy = true;
  Timer? _bannerTimer;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isBottomBarVisible) {
          setState(() {
            _isBottomBarVisible = false;
          });
        } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          setState(() {
            _isBottomBarVisible = true;
          });
        }
      }
    });

    _bannerTimer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _showPoweredBy = !_showPoweredBy;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _bannerTimer?.cancel();
    super.dispose();
  }

  final List<String> categories = [
    "All",
    "Electronics",
    "Beauty",
    "Kids",
    "Gifting",
  ];
  final List<IconData> icons = [
    Icons.home,
    Icons.electrical_services,
    Icons.brush,
    Icons.child_care,
    Icons.card_giftcard,
  ];

  void onCategoryTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    if (index != 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (_) => Scaffold(
                appBar: AppBar(title: Text(categories[index])),
                body: Center(
                  child: Text('${categories[index]} screen coming soon'),
                ),
              ),
        ),
      ).then((_) {
        setState(() {
          selectedIndex = 0;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 40,
                    right: 50,
                    bottom: 20,
                  ),
                  color: const Color.fromARGB(255, 202, 190, 50),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blinkit in",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "12 Minutes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WalletPage(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.wallet,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 30),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProfilePage(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  color: Color.fromARGB(255, 202, 190, 50),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for fruits,vegetables",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 202, 190, 50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(categories.length, (index) {
                        return CategoryNavItem(
                          icon: icons[index],
                          label: categories[index],
                          isSelected: selectedIndex == index,
                          onTap: () => onCategoryTap(index),
                        );
                      }),
                    ),
                  ),
                ),

                Container(
                  color: const Color.fromARGB(255, 202, 190, 50),
                  width: double.infinity,
                  height: 200,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/blinkit_ganesh.jpg',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover, //use to fit in complete width screen
                      ),
                      Positioned(
                        top: 30,
                        left: 16,
                        right: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "CELEBRATE",
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "Ganesh Chaturthi",
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 75,
                                top: 20,
                                bottom: 150,
                              ),
                              child: Container(
                                width: 500,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FestivalOffer(
                                      label: "Pooja",
                                      label2: "Needs",
                                      imagePath:
                                          "assets/images/blinkit_pooja.jpg",
                                    ),
                                    FestivalOffer(
                                      label: "Festive",
                                      label2: "Ready",
                                      imagePath:
                                          "assets/images/blinkit_makeup.jpg",
                                    ),
                                    FestivalOffer(
                                      label: "Indian",
                                      label2: "Sweets",
                                      imagePath:
                                          "assets/images/blinkit_laddo.jpg",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "BestSellers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BestSeller(
                        imagePath: "assets/images/blinkit_vegetables.jpg",
                        items: "+104 items",
                        label: "Fresh \n Vegetables",
                      ),
                      BestSeller(
                        imagePath: "assets/images/blinkit_milk.jpg",
                        items: "+104 items",
                        label: "Milk",
                      ),
                      BestSeller(
                        imagePath: "assets/images/blinkit_curd.avif",
                        items: "+104 items",
                        label: "Curd & Yogurt",
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 159, 24, 71),
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/red_ribbon.png",
                            height: 100,
                            width: 120,
                          ),
                          Positioned(
                            top: 30,
                            child: Center(
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 400),
                                transitionBuilder:
                                    (child, animation) => FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    ),
                                child:
                                    _showPoweredBy
                                        ? BannerText(
                                          key: ValueKey('powered'),
                                          text: "POWERED BY",
                                        )
                                        : BannerText(
                                          key: ValueKey('date'),
                                          text: "  14-23 Sep",
                                        ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Lakme()),
                            SizedBox(width: 8),
                            Expanded(child: FreshFace()),
                            SizedBox(width: 8),
                            Expanded(child: Renee()),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: LakmeCards(
                                title: "Makeup & \n Fragrance",
                                imagePath:
                                    'assets/images/blinkit_MakeupKit.png',
                                description: "Minimum 25% OFF",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: LakmeCards(
                                title: "Makeup & \n Fragrance",
                                imagePath:
                                    'assets/images/blinkit_MakeupKit.png',
                                description: "Minimum 25% OFF",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: LakmeCards(
                                title: "Makeup & \n Fragrance",
                                imagePath:
                                    'assets/images/blinkit_MakeupKit.png',
                                description: "Minimum 25% OFF",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "GROCERIES",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GroceriesList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
