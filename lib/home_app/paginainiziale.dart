import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';
import 'profilo.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaIniziale extends StatelessWidget {

  const PaginaIniziale({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Barralaterale(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100,133,205),
        title: Text(
          "MC Music App ",
          style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black),
        ),
        centerTitle: true,
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed:() {
                Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) =>   const Profilo()),
                        );
                        }, 
              icon: const Icon(Icons.account_circle,size: 40,),
              tooltip: ('Profilo'),
              
              ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("immagini/sfondo_home.jpg"),
              fit: BoxFit.cover,
            ),
          ),
       ),
    );
  }
}
