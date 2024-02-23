import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddWallPaper extends StatefulWidget {
  const AddWallPaper({super.key});

  @override
  State<AddWallPaper> createState() => _AddWallPaperState();
}

class _AddWallPaperState extends State<AddWallPaper> {
  final List<String> categoryItem = ["nature", "wild", "food", "city"];
  String? value;

  ImagePicker? imagePicker = new ImagePicker();
  File? selectedImage;

  Future getImage()async{
    var image = await imagePicker!.pickImage(source: ImageSource.gallery);

    selectedImage = File(image!.path as List<Object>,image.path);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Add WallPaper",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child:const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
           const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){ 
                getImage();
              },
              child: Center(
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 122, 97, 97),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                items: categoryItem
                    .map((item) => DropdownMenuItem(
                          child: Text(
                            item,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          value: item,
                        ))
                    .toList(),
                onChanged: ((value) => setState(() {
                      this.value = value;
                    })),
                hint: Text("Select Category"),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
