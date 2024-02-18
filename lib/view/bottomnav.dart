import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/view/category.dart';
import 'package:wallpaper/view/homepage.dart';
import 'package:wallpaper/view/search.dart';

class BottomNavber extends StatefulWidget {
  const BottomNavber({super.key});

  @override
  State<BottomNavber> createState() => _BottomNavberState();
}

class _BottomNavberState extends State<BottomNavber> {
  int currentTab = 0;
  late List<Widget>pages;
  late HomePage homePage;
  late CategoryPage category;
  late Search search;
  late Widget currentPage;

  @override
  void initState() {
    homePage = HomePage();
    category = CategoryPage();
    search = Search();
    pages = [homePage,category,search];
    currentPage = HomePage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      bottomNavigationBar:  CurvedNavigationBar(
        backgroundColor: Colors.white,
        
        animationDuration: Duration(milliseconds: 500),
        color: Colors.blueGrey,
        onTap: (index){
           setState(() {
              currentTab = index;
           });
        },
        items: [
          Icon(Icons.home_outlined,color: Colors.white,),
        
          Icon(Icons.category,color: Colors.white,),
            Icon(Icons.search,color: Colors.white,),
        ]),

        body: pages[currentTab],
    );
  }
}