class ModelWaqiah {
  int? id;
  String? arabic;
  String? arti;

  ModelWaqiah(this.id, this.arabic, this.arti);

  ModelWaqiah.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    arabic = json['arabic'];
    arti = json['arti'];
  }
}
