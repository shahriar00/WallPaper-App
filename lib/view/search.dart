import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallpaper/model/photo_model.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper/widget/wallpaper_list.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<PhotoModel> photos = [];
  TextEditingController search = TextEditingController();

  getSearchWallpaper(String searchQuery)async{ 
    http.get(Uri.parse("https://api.pexels.com/v1/search?query=$searchQuery&per_page=20"),
    headers: {"Authorization":"nAFF4bDXQP3BjDFWEQ6FWyHipr1QXvd9zMVvBRO71WyheQdKW1jK48Vj"}).then((value) { 
      Map<String,dynamic> jsonData = jsonDecode(value.body);
      jsonData["photos"].forEach((element){
        PhotoModel photomodel = new PhotoModel();
        photomodel = PhotoModel.fromMap(element);
        photos.add(photomodel);
      });
      setState(() {
        
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Search",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              margin: EdgeInsets.only(top: 20, right: 20, left: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.grey),
              child:  TextField(
                controller: search,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: (){
                      getSearchWallpaper(search.text);

                    },
                    child: Icon(Icons.search_outlined)),
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20,),
            Expanded(child: wallpaper(photos, context)),
          ],
        ),
      ),
    );
  }
}
