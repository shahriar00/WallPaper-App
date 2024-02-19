class PhotoModel{
  String? url;
  srcModel? src;
  PhotoModel({this.url,   this.src});

  factory PhotoModel.fromMap(Map<String,dynamic>parseJson){
    return PhotoModel( 
      url: parseJson["url"],
      src: srcModel.fromMap(parseJson["src"])
    );
  }
}

class srcModel{
  String? portrait;
  String? large;
  String? landscape;
  String? medium;

  srcModel({this.portrait,this.large,this.landscape,this.medium});

  factory srcModel.fromMap(Map<String,dynamic> srcJson){
    return srcModel(
      portrait: srcJson["portrait"],
      large: srcJson["large"],
      landscape: srcJson["landscape"],
      medium: srcJson["medium"]
    );
  }
}