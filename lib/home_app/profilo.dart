import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilo extends StatelessWidget {
  const Profilo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        drawer: const Barralaterale(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 133, 205),
          title: Text(
            'Profilo',
            style: GoogleFonts.pacifico(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("immagini/sfondo_home.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 245),
                  child: Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: BorderRadius.circular(100)),
                    child: const CircleAvatar(
                        backgroundColor: Colors.grey,
                        maxRadius: 100,
                        child: Icon(
                          Icons.person,
                          size: 150,
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            
             Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  children: [
                    Text("Nome:",
                        style: GoogleFonts.pacifico(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Gabriele",
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Divider(),
                    Text("Cognome:",
                        style: GoogleFonts.pacifico(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Cafaro",
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Divider(),
                    Text("Strumento:",
                        style: GoogleFonts.pacifico(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Chitarra",
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Divider(),
                    Text("Classe:",
                        style: GoogleFonts.pacifico(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("5^A Inf",
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    const Divider(),
                    Text("E-mail:",
                        style: GoogleFonts.pacifico(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("gabriele.cafaro@itcgtursi.edu.it",
                        style: GoogleFonts.robotoCondensed(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                          ),
              
          ],
        ));
  }
}
