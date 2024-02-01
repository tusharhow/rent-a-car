class CarModel {
  int id;
  String name;
  String model;
  String image;
  String price;
  String description;
  List<String> parts;

  CarModel({
    required this.id,
    required this.name,
    required this.model,
    required this.image,
    required this.price,
    required this.description,
    required this.parts,
  });
}
