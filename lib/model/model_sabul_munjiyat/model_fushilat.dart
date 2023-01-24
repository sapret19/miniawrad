class ModelFushilat {
  String? arabic;

  ModelFushilat(this.arabic);

  ModelFushilat.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
