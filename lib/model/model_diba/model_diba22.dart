class ModelDiba22 {
  String? arabic;

  ModelDiba22(this.arabic);

  ModelDiba22.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
