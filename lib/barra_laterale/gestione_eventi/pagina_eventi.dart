import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:google_fonts/google_fonts.dart';
import 'evento.dart';
import 'dbhelper.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Eventi extends StatefulWidget {
  const Eventi({super.key});
  @override
  State<Eventi> createState() => CreaEventi();
}

class CreaEventi extends State<Eventi> {
  DateTime oggi = DateTime.now();
  late DbHelper _dbHelper;
  Future<List<Evento>>? _eventi;

  TextEditingController cTitolo = TextEditingController();
  TextEditingController cDescrizione = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dbHelper = DbHelper();
    _dbHelper.initializeDb().whenComplete(() async {
      setState(() {
        _eventi = _dbHelper.getEvento();
      });
    });
  }

  void giornoSelezionato(DateTime day, DateTime focusedDay) {
    setState(() {
      oggi = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Barralaterale(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 100, 133, 205),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
            _showInsertForm(context);
          }),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text(
          'Eventi',
          style: GoogleFonts.pacifico(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("immagini/sfondo_home.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        FutureBuilder(
            future: _eventi,
            builder: (context, AsyncSnapshot<List<Evento>> snapshot) {
              if (snapshot.data != null && snapshot.data!.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 250,
                    left: 50,
                    right: 40,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.black, width: 3),
                        color: Colors.white),
                    width: 250,
                    height: 50,
                    child: Center(
                      child: Text('Non ci sono eventi  in programma.',
                          style: GoogleFonts.pacifico(
                              fontSize: 15, color: Colors.black)),
                    ),
                  ),
                );
              }
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                          color: Colors.grey,
                        ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Slidable(
                        startActionPane: ActionPane(
                          motion: const StretchMotion(),
                          children: [
                            SlidableAction(
                              backgroundColor: Colors.transparent,
                              onPressed: (_) {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: Text("Eliminazione evento",
                                        style: GoogleFonts.pacifico(
                                            fontSize: 15, color: Colors.black)),
                                    content: Text(
                                        "Si desidera davvero elimminare l'evento selezionato?",
                                        style: GoogleFonts.pacifico(
                                            fontSize: 15, color: Colors.black)),
                                    icon: const Icon(Icons.delete),
                                    iconColor: Colors.red,
                                    actions: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromARGB(
                                                          255, 100, 133, 205))),
                                          onPressed: () {
                                            _dbHelper.removeEvento(
                                                snapshot.data![index].id!);
                                            setState(() {
                                              _eventi = _dbHelper.getEvento();
                                            });
                                            Navigator.of(context).pop();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                              backgroundColor: Colors.white70,
                                              duration:
                                                  const Duration(seconds: 1),
                                              content: Text("Evento eliminato!",
                                                  style: GoogleFonts.pacifico(
                                                      fontSize: 15,
                                                      color: Colors.black)),
                                            ));
                                          },
                                          child: const Text("Sì",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ))),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color.fromARGB(
                                                          255, 100, 133, 205))),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("No",
                                              style: TextStyle(
                                                color: Colors.black,
                                              )))
                                    ],
                                  ),
                                );
                              },
                              icon: Icons.delete,
                              foregroundColor: Colors.black,
                              label: "Elimina",
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(25)),
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                color: Colors.white),
                            child: ListTile(
                              title: Text(snapshot.data![index].titolo,
                                  style: GoogleFonts.pacifico(
                                      fontSize: 15, color: Colors.black)),
                              subtitle: Text(snapshot.data![index].descrizione),
                              trailing: const Icon(
                                Icons.queue_music,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }
            }),
      ]),
    );
  }

  void _showInsertForm(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => SingleChildScrollView(
              child: AlertDialog(
                content: Container(
                  width: 160.0,
                  height: 130.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextFormField(
                      controller: cTitolo,
                      decoration: InputDecoration(
                          hintText: "Titolo",
                          labelStyle: GoogleFonts.pacifico(
                              fontSize: 15, color: Colors.black)),
                    ),
                    TextFormField(
                      controller: cDescrizione,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration:
                          const InputDecoration(hintText: "Descrizione"),
                    ),
                  ]),
                ),
                icon: const Icon(Icons.add),
                actions: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 100, 133, 205))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Annulla",
                          style: GoogleFonts.pacifico(
                              fontSize: 15, color: Colors.black))),
                  Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 100, 133, 205))),
                        onPressed: () {
                          String titolo = cTitolo.text;
                          String descrizione = cDescrizione.text;
                          Evento evento = Evento(
                            titolo: titolo,
                            descrizione: descrizione,
                          );
                          _dbHelper.insertEvento(evento);
                          setState(() {
                            _eventi = _dbHelper.getEvento();
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Aggiungi",
                            style: GoogleFonts.pacifico(
                                fontSize: 15, color: Colors.black))),
                  ),
                ],
                title: Text("Inserisci un  nuovo evento",
                    style: GoogleFonts.pacifico(
                        fontSize: 20, color: Colors.black)),
              ),
            ));
  }
}
