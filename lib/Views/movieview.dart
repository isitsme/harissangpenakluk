import '../views/modal.dart';
import 'package:flutter/material.dart';
import 'package:widget_1/models/movie.dart';
import '../controllers/moviecontroller.dart';


class MovieView extends StatefulWidget {
  const MovieView({super.key});
  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final formKey = GlobalKey<FormState>();
  final moviecontroller movie = moviecontroller();
  final TextEditingController title = TextEditingController();
  final TextEditingController gambar = TextEditingController();
  final TextEditingController voteAverage = TextEditingController();
  final List<String> buttonChoice = ["Update", "Hapus"];
  
  List? film;
  int? film_id;

  void getFilm() {
    setState(() {
      film = movie.movie;
    });
  }

  @override
  void initState() {
    super.initState();
    getFilm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                film_id = null;
              });
              title.clear();
              gambar.clear();
              voteAverage.clear();
              ModalWidget().showFullModal(context, addItem(null));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: film == null || film!.isEmpty
          ? const Center(child: Text("Tidak ada film"))
          : ListView.builder(
              itemCount: film!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image(image: AssetImage(film![index].posterPath)),
                    title: Text(film![index].title),
                    trailing: PopupMenuButton(
                      itemBuilder: (BuildContext context) {
                        return buttonChoice.map((choice) {
                          return PopupMenuItem(
                            value: choice,
                            child: Text(choice),
                            onTap: () {
                              if (choice == "Update") {
                                setState(() {
                                  film_id = film![index].id;
                                });
                                title.text = film![index].title;
                                gambar.text = film![index].posterPath;
                                voteAverage.text =
                                    film![index].voteAverage.toString();
                                ModalWidget().showFullModal(
                                  context, addItem(index));
                              } else if (choice == "Hapus") {
                                setState(() {
                                  film!.removeAt(index);
                                });
                              }
                            },
                          );
                        }).toList();
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }

  Widget addItem(int? index) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: title,
              decoration: const InputDecoration(labelText: "Title"),
              validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
            ),
            TextFormField(
              controller: gambar,
              decoration: const InputDecoration(labelText: "Gambar"),
              validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
            ),
            TextFormField(
              controller: voteAverage,
              decoration: const InputDecoration(labelText: "Vote Average"),
              validator: (value) => value!.isEmpty ? 'Harus diisi' : null,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (index != null) {
                    setState(() {
                      film![index]
                        ..title = title.text
                        ..posterPath = gambar.text
                        ..voteAverage = double.parse(voteAverage.text);
                    });
                  } else {
                    final newId = film!.length + 1;
                    setState(() {
                      film!.add(MovieModel(
                        id: newId,
                        title: title.text,
                        posterPath: gambar.text,
                        voteAverage: double.parse(voteAverage.text),
                      ));
                    });
                  }
                  Navigator.pop(context);
                }
              },
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
  