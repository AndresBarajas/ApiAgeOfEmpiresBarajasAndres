class Civilizations {
  String? name;
  String? url;

  Civilizations({
    this.name,
    this.url,
  });

  factory Civilizations.fromMapJson(Map<String, dynamic> data) => Civilizations(
        name: data['name'],
        url: data['url'],
      );
}
