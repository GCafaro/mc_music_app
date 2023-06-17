import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'profilo.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaIniziale extends StatelessWidget {
  PaginaIniziale({super.key});
  late String nomeutente;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const Barralaterale(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text(
          "MC Music App ",
          style: GoogleFonts.pacifico(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profilo()),
                );
              },
              icon: const Icon(
                Icons.account_circle,
                size: 40,
              ),
              tooltip: ('Profilo'),
            ),
          )
        ],
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.white),
              width: 340,
              height: 60,
              child: Center(
                  child: Text('Partecipanti del progetto:',
                      style: GoogleFonts.pacifico(
                          fontSize: 21, color: Colors.black)))),
        ),
        GridView(
          padding: const EdgeInsets.only(top: 80),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 13),
          children: [
            avatarConNome(nomeutente="Prof Torchio"),
            avatarConNome(nomeutente="Prof Cirigliano"),
            avatarConNome(nomeutente="Prof Crispino"),
            avatarConNome(nomeutente="Gabriele Cafaro"),
            avatarConNome(nomeutente="Gabriele Di Santo"),
            avatarConNome(nomeutente="Piermaria Corbino"),
            
          ],
        )
      ]),
    );
  }

  Widget avatarConNome(nomeutente) {
    return Column(children: [
      Container(
        width: 77,
        height: 77,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            borderRadius: BorderRadius.circular(100)),
        child: const CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 45,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            )),
      ),
      const SizedBox(height: 3),
      Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.black, width: 3),
              color: Colors.white),
          width: 110,
          height: 40,
          child: Center(
              child: Text(nomeutente,
                  style: GoogleFonts.pacifico(
                      fontSize: 12, color: Colors.black)))),
    ]);
  }
}
