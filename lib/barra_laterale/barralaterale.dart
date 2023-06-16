import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mc_music_app/barra_laterale/eventi.dart';
import 'package:mc_music_app/home_app/paginainiziale.dart';
import 'info.dart';
//import 'lista_canzoni/canzoni.dart';


class Barralaterale extends StatelessWidget {
  const Barralaterale({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          color: const Color.fromARGB(255, 100,133,205),
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/3,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Image(image: AssetImage('immagini/logo.png')),
              ),
              
            ),
            menu(context),
          ]),
        )
      ]),
    );
  }
}

Widget menu(BuildContext context) {
  return Material(
    child: InkWell(
      child: Padding(
          padding: const EdgeInsets.all(2),
          child: Column(
            children: [
                ListTile(
                onTap: () {
                  Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) =>   const PaginaIniziale()),
                        );
                },
                title: Text("Home ",
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold)),
                leading: const Icon(Icons.home,color: Colors.black),
                
                ),
              ListTile(
                onTap: () {
                  Navigator.push(
                          context,                
                          MaterialPageRoute(builder: (context) =>   const Eventi()),
                        );
                },
                title: Text("Eventi",
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold)),
                leading: const Icon(Icons.calendar_today,color: Colors.black),),
                ListTile(
                onTap: () {
                  //Navigator.push(
                    //      context,                
                      //    MaterialPageRoute(builder: (context) =>   const Canzoni()),
                      //  );
                },
                title: Text("Canzoni",
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold)),
                leading: const Icon(Icons.music_note,color: Colors.black),),
                ListTile(
                onTap: () {Navigator.push(
                          context,                
                        MaterialPageRoute(builder: (context) =>   const Info()),
                        );
                        },
                title: Text("Info",
                    style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.bold)),
                leading: const Icon(Icons.info,color: Colors.black),),
                
  
            
            ],
          )),
    ),
  );

  
}

