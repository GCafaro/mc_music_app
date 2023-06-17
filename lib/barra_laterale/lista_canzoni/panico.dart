import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Panico extends StatelessWidget {
  const Panico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text('Panico',
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black)),
        centerTitle: true,

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
              padding: const EdgeInsets.all(25.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.black, width: 3),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Text(
                          "Sei l'ennesimo sbaglio che potevo anche evitare\n Su un tetto al primo appuntamento solo per gridare\n Vedersi solo per scopare, poi precipitare giù\n E fuori è nebbia fitta\n E perché ora stai zitta?\n E cosa vuoi che dica?\n E come fai tu, come fai a fare sempre finta\n E poi darmi una spinta e farmi andare giù?\n Tanto lo sai, farò il panico\n Come sempre, dimmi ora che fai\n Bevo il solito\n Sarà tossico e so che non mi farà\n Più come una volta\n Due buttafuori mi stanno scortando alla porta\n Non ho mai avuto un piano, ora ne ho un paio di scorta\n Per il panico\n Io sono quello che resta per ultimo\n A guardare tutti mentre se ne vanno\n Entro sempre più freddo e più vuoto\n Sembra Milano il primo dell'anno\n Sembra che faccio finta di niente\n Ma ogni giorno mi allego più storie\n So che lo sai come ci si sente\n A stare senza un angelo custode\n Viviamo come senza un giorno dopo\n Lascio l'auto con le chiavi dentro\n E corro a prenderti un vestito nuovo\n Che starà meglio sul pavimento\n Spingo finché quel rimmel ti cade\n Tu sei il bene, ma diventi il male\n Siamo un capolavoro del cinema\n Con un finale da dimenticare\n E tanto lo sai, farò il panico\n Come sempre, dimmi ora che fai\n Bevo il solito\n Sarà tossico e so che non mi farà\n Più come una volta\n Due buttafuori mi stanno scortando alla porta\n Non ho mai avuto un piano, ora ne ho un paio di scorta\n Per il panico\n Forse anche stanotte\n Perdo la voce per dire niente\n Penso alle nostre ferite aperte\n Sfondo le porte solo se serve\n Tanto lo sai, farò il panico\n Come sempre, dimmi ora che fai\n Bevo il solito\n Sarà tossico e so che non mi farà\n Più come una volta\n Due buttafuori mi stanno scortando alla porta\n Non ho mai avuto un piano, ora ne ho un paio di scorta\n Per il panico",
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontSize: 15)),
                    ),
                  ),
                ),
            ),
        ]),
      
    );
    }
}