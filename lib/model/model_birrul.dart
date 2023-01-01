class ModelBirrul {
  int? id;
  String? arabic;
  String? arti;

  ModelBirrul(this.id, this.arabic, this.arti);

  ModelBirrul.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    arabic = json['arabic'];
    arti = json['arti'];
  }
}
