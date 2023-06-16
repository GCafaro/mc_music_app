import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Barralaterale(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 133, 205),
          centerTitle: true,
          title: const Text(
            'Informazioni',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Stack(
          alignment: Alignment.center, 
          children: [
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
          Container(
            
            width: 600,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Colors.black,width: 3),color: Colors.white),
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ciao io sono Gabriele Cafaro,sviluppatore della Mc Music App.Lo scopo di questa applicazione è quello di avere un approccio più tecnico e pratico al progetto di musica dell'Istituo Tecnico Manlio Capitolo.Le principali funzioni di questa applicazione sono: la visualizzazione dei testi delle canzoni,la creazione di eventi per le prove musicali o saggi scolastici,registrazione con il proprio account della scuola e la visualizzazione dei propri dati personali attraverso la pagina profilo ",style:  GoogleFonts.bebasNeue(color: Colors.black)
              ),
            ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:500.0),
              child: Container(
              
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(color: Colors.black,width: 3),
                color: Colors.white),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Per eventuali problemi con l'applicazione: ",style:  GoogleFonts.robotoCondensed(color: Colors.black)
                ),
              ),
              ),
            ),
           
        ]));
  }
}
