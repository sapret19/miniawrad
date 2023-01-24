class ModelDiba6 {
  String? arabic;

  ModelDiba6(this.arabic);

  ModelDiba6.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
