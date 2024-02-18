import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Category"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [ 
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Stack( 
                  children: [
                    ClipRRect( 
                          borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/wild.jpg",width: MediaQuery.of(context).size.width,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120,left: 170,right: 150),
                      child: Text("Wildlife",style: TextStyle( 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),)
                  ],
                ),
              ),
SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Stack( 
                  children: [
                    ClipRRect( 
                          borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/wild.jpg",width: MediaQuery.of(context).size.width,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120,left: 170,right: 150),
                      child: Text("Wildlife",style: TextStyle( 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),)
                  ],
                ),
              ),

SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Stack( 
                  children: [
                    ClipRRect( 
                          borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/wild.jpg",width: MediaQuery.of(context).size.width,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120,left: 170,right: 150),
                      child: Text("Wildlife",style: TextStyle( 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),)
                  ],
                ),
              ),


SizedBox(height: 20,),
               Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Stack( 
                  children: [
                    ClipRRect( 
                          borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/wild.jpg",width: MediaQuery.of(context).size.width,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120,left: 170,right: 150),
                      child: Text("Wildlife",style: TextStyle( 
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}