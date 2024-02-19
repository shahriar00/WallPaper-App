import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/model/photo_model.dart';

Widget wallpaper(List<PhotoModel>listphoto,BuildContext context){
  return Container( 
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      padding: EdgeInsets.all( 4),
      crossAxisCount: 2,
    childAspectRatio: 0.6,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
    children: listphoto.map((PhotoModel photoModel) { 
      return GridTile(child: Hero(tag: photoModel.src!.portrait!,child: Container( 
        child: CachedNetworkImage(imageUrl: photoModel.src!.portrait!,fit: BoxFit.cover,),
      ),),);
    } ).toList(),),
    
  );
}