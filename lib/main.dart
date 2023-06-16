import 'package:mc_music_app/home_app/paginainiziale.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MaterialApp(
        home: MainApp(),
        debugShowCheckedModeBanner: false,
      )));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool oscuratesto = true;
  TextEditingController controllerNomeUtente = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("immagini/giphy.gif"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.white60,
                  ),
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('immagini/logo.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 100, 133, 205),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  
                    child: TextButton(
                        onPressed: () {
                          String nomeUtente = controllerNomeUtente.text;
                          String password = controllerPassword.text;
                          
                          if (nomeUtente ==
                                  "gabriele.cafaro@itcgtursi.edu.it" &&
                             password == "1234") {
                            Navigator.push(
                             context,
                              MaterialPageRoute(
                                  builder: (context) => const PaginaIniziale()),
                            );
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog(
                                    title: Text('Credenziali errate.Riprova.'),
                                  );
                                });
                          }
                          
                        },
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        child: Text('Accedi',
                            style: GoogleFonts.roboto(
                                fontSize: 20, color: Colors.black))),
                  
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  height: 145,
                  width: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        child: TextField(
                          controller: controllerNomeUtente,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            hintText: 'Indirizzo Email',
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 24),
                        child: TextField(
                          controller: controllerPassword,
                          obscureText: oscuratesto,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: InputBorder.none,
                              hintText: 'Password',
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    oscuratesto = !oscuratesto;
                                  });
                                },
                                child: Icon(
                                    color: Colors.black,
                                    oscuratesto
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
