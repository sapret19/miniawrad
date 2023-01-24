class ModelDiba3 {
  String? arabic;

  ModelDiba3(this.arabic);

  ModelDiba3.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
