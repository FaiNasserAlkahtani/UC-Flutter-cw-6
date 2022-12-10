class Building{
  String name;
  String imageURL;

  Building({required this.name,required this.imageURL});

  static List<Building> buildings = [
    Building(name: "برج التحرير", imageURL: "assets/images/lib_tower.jpeg"),
    Building(name: "أبراج الكويت", imageURL: "assets/images/kwt_towers.jpeg"),
    Building(name: "المسجد الكبير", imageURL: "assets/images/grand_mosk.jpeg")
  ];






}