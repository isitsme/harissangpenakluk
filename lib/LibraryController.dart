import 'BookModel.dart';


class LibraryController {
  List<BookModel> book = [
    BookModel(
      id: 1,
      judul: '3726 Mdpl',
      deskripsi: 'gunung',
      penerbit: 'Romancious',
      fotoBuku: 'assets/3726.jpeg',
      pengarang: 'Nirwana Sari',
      stok: 3,

    ),
    BookModel(
      id: 2,
      judul: 'Laut Bercerita',
      deskripsi: 'laut',
      penerbit: 'Kepustakaan Populer Gramedia',
      fotoBuku: 'assets/Laut.jpeg',
      pengarang: 'Leila S. Chudori',
      stok: 9,
    ),
  ];

}