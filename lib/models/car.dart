enum Type {
  suv,
  hatchBack,
  sedan,
  coupe,
}

enum Capacity {
  twoSeater,
  fourSeater,
  fiveSeater,
  sixSeater,
  sevenSeater
}

class CarModel {
  const CarModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.details,
    required this.description,
    required this.type,
    required this.capacity,
    required this.isPetrol,
    required this.isDiesel,
    required this.isElectric,
    required this.brandName,
    required this.isCoupe,
    required this.isHatchback,
    required this.isSedan,
    required this.isSUV,
  });

  final String id;
  final String title;
  final String brandName;
  final String imageUrl;
  final List<String> details;
  final List<String>description;
  final Type type;
  final Capacity capacity;
  final bool isPetrol;
  final bool isDiesel;
  final bool isElectric;
  final bool isCoupe;
  final bool isSedan;
  final bool isHatchback;
  final bool isSUV;
}