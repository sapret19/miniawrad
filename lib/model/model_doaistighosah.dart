class Modeldoaistighosah {
  int? id;
  String? name;
  String? arabic;

  Modeldoaistighosah(this.id, this.name, this.arabic);

  Modeldoaistighosah.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
  }
}
