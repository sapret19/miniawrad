class ModelHasyr {
  String? arabic;

  ModelHasyr(this.arabic);

  ModelHasyr.fromJson(Map<String, dynamic> json) {
    arabic = json['arabic'];
  }
}
