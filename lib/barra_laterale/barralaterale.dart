import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mc_music_app/barra_laterale/gestione_eventi/pagina_eventi.dart';
import 'package:mc_music_app/home_app/paginainiziale.dart';
import 'info.dart';
import 'package:mc_music_app/barra_laterale/lista_canzoni/canzoni.dart';

class Barralaterale extends StatelessWidget {
  const Barralaterale({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Container(
        color: const Color.fromARGB(255, 100, 133, 205),
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Image(
              fit: BoxFit.contain, image: AssetImage('immagini/logo.png')),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Divider(
          height: 0,
          thickness: 3,
          color: Colors.black,
        ),
      ),
      menu(context),
    ]));
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
                    MaterialPageRoute(builder: (context) => PaginaIniziale()),
                  );
                },
                title: Text("Home ",
                    style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.bold, fontSize: 25)),
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Eventi()),
                  );
                },
                title: Text("Eventi",
                    style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.bold, fontSize: 25)),
                leading: const Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Canzoni()),
                    );
                  },
                  title: Text("Canzoni",
                      style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold, fontSize: 25)),
                  leading: const Icon(
                    Icons.music_note,
                    color: Colors.black,
                    size: 35,
                  )),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Info()),
                  );
                },
                title: Text("Info",
                    style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.bold, fontSize: 25)),
                leading: const Icon(
                  Icons.info,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ],
          )),
    ),
  );
}
