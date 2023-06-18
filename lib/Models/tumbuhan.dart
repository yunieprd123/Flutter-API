class Petanis {
  int id;
  String nama;
  String umur;
  String alamat;
  String foto;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  Petanis({
    required this.id,
    required this.nama,
    required this.umur,
    required this.alamat,
    required this.foto,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Petanis.fromJson(Map<String, dynamic> json) => Petanis(
        id: json["id"],
        nama: json["nama"],
        umur: json["umur"],
        alamat: json["alamat"],
        foto: json["foto"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "umur": umur,
        "alamat": alamat,
        "foto": foto,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
