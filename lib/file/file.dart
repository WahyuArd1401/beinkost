class ProvinceFile {
  String id;
  String name;

  ProvinceFile({required this.id, required this.name});

  factory ProvinceFile.fromJson(Map<String, dynamic> json) {
    return ProvinceFile(id: json['id'], name: json['name']);
  }
}