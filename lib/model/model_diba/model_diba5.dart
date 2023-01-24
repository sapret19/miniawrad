class ModelDiba5 {
  String? arabic;

  ModelDiba5(this.arabic);

  ModelDiba5.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
