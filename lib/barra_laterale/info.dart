import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Barralaterale(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 133, 205),
          centerTitle: true,
          title: Text(
            'Informazioni',
            style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black),
          ),
        ),
        body: Stack(alignment: Alignment.topCenter, children: [
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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                    "Ciao!! Sono Gabriele Cafaro ,sviluppatore della Mc Music App.Lo scopo di questa applicazione è quello di avere un approccio più tecnico e pratico al progetto di musica dell'Istituo Tecnico Manlio Capitolo.Le principali funzioni di questa applicazione sono: la visualizzazione dei testi delle canzoni,la creazione di eventi per le prove musicali o saggi scolastici,registrazione con il proprio account della scuola e la visualizzazione dei propri dati personali attraverso la pagina profilo. ",
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0),
            child: Container(
              width: 300,
              height: 85,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color.fromARGB(255, 100,133,205)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    "Per eventuali problemi con l'applicazione potete contattarmi su: ",
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 18)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 550.0),
            child: Container(
             decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color.fromARGB(255, 100,133,205)),
              width: 150,
              height: 50,
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 548.0),
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(const Color.fromARGB(255, 100,133,205))),
              onPressed: () => launchUrlString(
                  'https://instagram.com/gabriele_cafaro_?igshid=ZDc4ODBmNjlmNQ=='),
              child: Text('Instagram',
                  style: GoogleFonts.pacifico(fontSize: 22, color: Colors.black)),
            ),
          ),
        ]));
  }
}
