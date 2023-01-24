class ModelDiba19 {
  String? arabic;

  ModelDiba19(this.arabic);

  ModelDiba19.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
