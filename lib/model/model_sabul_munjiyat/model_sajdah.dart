class ModelSajdah {
  String? arabic;

  ModelSajdah(this.arabic);

  ModelSajdah.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
