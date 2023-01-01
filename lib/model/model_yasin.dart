class ModelYasin {
  int? id;
  String? arabic;
  String? arti;

  ModelYasin(this.id, this.arabic, this.arti);

  ModelYasin.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    arabic = json['arabic'];
    arti = json['arti'];
  }
}
