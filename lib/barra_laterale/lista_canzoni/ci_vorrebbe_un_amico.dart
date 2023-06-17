import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CiVorrebbeUnAmico extends StatelessWidget {
  const CiVorrebbeUnAmico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text('Ci Vorrebbe Un Amico',
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
                          "Stare insieme a te \n È stata una partita\n Va bene hai vinto tu\n Tutto il resto è vita\n Ma se penso che l'amore\n È darsi tutto dal profondo\n In questa nostra storia\n Sono io che vado a fondo\n Ci vorrebbe un amico\n Per poterti dimenticare\n Ci vorrebbe un amico\n Per dimenticare il male\n Ci vorrebbe un amico\n Qui per sempre al mio fianco\n Ci vorrebbe un amico\n Nel dolore e nel rimpianto\n Amore, amore illogico\n Amore disperato\n Lo vedi sto piangendo\n Ma io ti ho perdonato\n E se amor che a nulla ho amato\n Amore, amore mio perdona\n In questa notte fredda\n Mi basta una parola\n Ci vorrebbe un amico\n Per poterti dimenticare\n Ci vorrebbe un amico\n Per dimenticare il male\n Ci vorrebbe un amico\n Qui per sempre al mio fianco\n Ci vorrebbe un amico\n Nel dolore e nel rimpianto\n Ci vorrebbe un amico\n Per poterti dimenticare\n Ci vorrebbe un amico\n Per dimenticare tutto il male\n Ci vorrebbe un amico\n Qui per sempre al mio fianco\n Ci vorrebbe un amico\n Nel dolore e nel rimpianto\n Ma vivere con te\n È stata una partita\n Il gioco è stato duro\n Comunque sia finita\n Ma sarà la notte magica\n O forse l'emozione\n Io mi ritrovo solo\n Davanti al tuo portone\n Ci vorrebbe un amico\n Per poterti dimenticare\n Ci vorrebbe un amico\n Per dimenticare il male\n Ci vorrebbe un amico\n Qui per sempre al mio fianco\n Ci vorrebbe un amico\n Nel dolore e nel rimpianto\n Ci vorrebbe un amico",
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