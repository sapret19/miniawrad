class ModelDoaTahlil {
  int? id;
  String? arabic;

  ModelDoaTahlil(this.id, this.arabic,);

  ModelDoaTahlil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    arabic = json['arabic'];
  }
}
