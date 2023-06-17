import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:mc_music_app/barra_laterale/lista_canzoni/hallelujah.dart';
import 'package:mc_music_app/barra_laterale/lista_canzoni/ci_vorrebbe_un_amico.dart';
import 'package:mc_music_app/barra_laterale/lista_canzoni/panico.dart';
class Canzoni extends StatelessWidget {
  const Canzoni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: const Barralaterale(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text('Lista Canzoni',
                      style: GoogleFonts.pacifico(
                          fontSize: 21, color: Colors.black)),
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
          padding: const EdgeInsets.only(top:25.0,left: 10,right: 10),
          child: Container(
            decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white),
            child: ListTile(
                    onTap: () {Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) =>  const Panico()),
                        );},
                    title: Text("Panico",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 25)),
                    subtitle: Text("Lazza",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 15)),
                    trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 35,)
                    ),         
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:125.0,left: 10,right: 10),
          child: Container(
            decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white),
            child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) =>  const CiVorrebbeUnAmico()),
                        );
                    },
                    title: Text("Ci vorrebe un amico",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 25)),
                    subtitle: Text("Antonello Venditti",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 15)),
                    trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 35,)
                    ),         
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:225.0,left: 10,right: 10),
          child: Container(
            decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white),
            child: ListTile(
                    onTap: () {Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) => const Hallelujah()),
                        );},
                    title: Text("Hallelujah",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 25)),
                    subtitle: Text("Leonard Cohen",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,fontSize: 15)),
                    trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 35,)
                    ),         
          ),
        ),

    ]));
    }
    }