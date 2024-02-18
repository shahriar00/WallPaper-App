import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      int activeindex = 0;
  @override
  Widget build(BuildContext context) {

    List WallPaper = [ 
      "images/img1.jpg",
      "images/img2.jpg",
      "images/img3.jpg",
      "images/img4.jpg",
      "images/img5.jpg"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("WallPaper App",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [ 
            const SizedBox(height: 30,),
            CarouselSlider.builder(itemCount: WallPaper.length, 
            itemBuilder: (context,index,realIndex){
              final res = WallPaper[index];
              return buildImage(res,index);
            },
            options: CarouselOptions( 
             height: MediaQuery.of(context).size.height/1.4,
             autoPlay: true,
             viewportFraction: 1,
             enlargeCenterPage: true,
             enlargeStrategy: CenterPageEnlargeStrategy.height,onPageChanged: (index,reason){ 
              setState(() {
                activeindex = index;
              });
             }
            )),
            SizedBox(height: 20,),
            Center(child:Indicator())
          ],
        ),
      ),
    );
  }

  Widget Indicator()=>AnimatedSmoothIndicator(activeIndex: activeindex, count: 3,effect: const SlideEffect( 
    dotColor: Colors.blue,dotHeight: 10,dotWidth: 10
  ),);

  Widget buildImage(String url, int index)=>Container( 
    margin: EdgeInsets.only(left: 20,right: 20),
    height: MediaQuery.of(context).size.height/1.5,
    width: MediaQuery.of(context).size.width,
    child: ClipRRect( 
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(url,fit: BoxFit.cover,),
    ),
  );
}