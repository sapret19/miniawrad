class ModelDiba17 {
  String? arabic;

  ModelDiba17(this.arabic);

  ModelDiba17.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
