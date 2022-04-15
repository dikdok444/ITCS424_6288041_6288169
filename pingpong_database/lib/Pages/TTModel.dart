class TTModel {
  final String name;
  //final String pic;
  //final String url;
  //final String speed;
  //final String control;
  //final String price;

  TTModel({
    required this.name,
    //required this.pic,
    //required this.url,
    //required this.speed,
    //required this.control,
    //required this.price,
  });

  factory TTModel.fromJson(Map<String, dynamic> json) {
    return TTModel(
      name: json['name']['S'],
      //pic: json['picture']['S'],
      //url: json['source']['S'],
      //speed: json['speeN']['N'],
      //control: json['control']['N'],
      //price: json['price']['N'],
    );
  }
}
