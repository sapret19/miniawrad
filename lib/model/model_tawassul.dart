class ModelTawassul {
  int? id;
  String? name;
  String? arabic;

  ModelTawassul(this.id, this.name, this.arabic);

  ModelTawassul.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
  }
}
