class ModelTahlil {
  int? id;
  String? arabic;

  ModelTahlil(this.id, this.arabic,);

  ModelTahlil.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    arabic = json['arabic'];
  }
}
