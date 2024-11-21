class BookModel {
  int id;
  String judul;
  String deskripsi;
  double? stok;
  String fotoBuku;
  String penerbit;
  String pengarang;
  BookModel({
    required this.id,
    required this.judul,
    required this.deskripsi,
    this.stok,
    required this.fotoBuku,
    required this.penerbit,
    required this.pengarang,
  });
}