import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart' as alias;



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
            style: GoogleFonts.pacifico(fontSize: 25, color: Colors.black),
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
              height: 403,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top:15,bottom:15,right: 6, left: 17),
                child: Text(
                    "Ciao!!! Sono Gabriele Cafaro,     sviluppatore della Mc Music App. \nLo scopo di questa applicazione è quello di avere un approccio più tecnico e pratico al progetto di musica dell'Istituo Tecnico Manlio Capitolo.Le principali funzioni di questa applicazione sono: \n -la visualizzazione dei testi delle canzoni, \n -la creazione di eventi per le prove musicali o saggi scolastici,\n -registrazione con il proprio account della scuola \n -la visualizzazione dei propri dati personali attraverso la pagina profilo. ",
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430.0),
            child: Container(
              width: 300,
              height: 85,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color.fromARGB(255, 100, 133, 205)),
              child: Padding(
                padding: const EdgeInsets.only(top:7,bottom:7,right: 6, left: 21),
                child: Center(
                  child: Text(
                      "Per eventuali problemi con l'applicazione potete contattarmi su: ",
                      
                      style: GoogleFonts.pacifico(
                          fontSize: 17, color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color.fromARGB(255, 100, 133, 205)),
              width: 150,
              height: 60,
              child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 100, 133, 205))),
                onPressed: () => alias.launchUrlString(
                    'https://instagram.com/gabriele_cafaro_?igshid=ZDc4ODBmNjlmNQ=='),
                child: Text('Instagram',
                    style: GoogleFonts.pacifico(
                        fontSize: 21, color: Colors.black)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 590.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color.fromARGB(255, 100, 133, 205)),
              width: 330,
              height: 53,
              
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextSelectionTheme(
                    data: const TextSelectionThemeData(selectionColor: Colors.white38),
                    child: SelectableText('Gmail : gabrielecafaro58@gmail.com',
                    
                      style: GoogleFonts.pacifico(
                          fontSize: 20, color: Colors.black)
                          
                          )),
                 )
            ),
          ),
        ]));
  }
}
