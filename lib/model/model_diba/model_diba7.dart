class ModelDiba7 {
  String? arabic;

  ModelDiba7(this.arabic);

  ModelDiba7.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
