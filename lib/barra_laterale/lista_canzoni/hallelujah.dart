import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Hallelujah extends StatelessWidget {
  const Hallelujah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 100, 133, 205),
        title: Text('Hallelujah',
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
                          "Now I've heard there was a secret chord \n That David played, and it pleased the Lord \n But you dont really care for music, do you? \n It goes like this, the fourth, the fifth \n The minor falls, the major lifts\n The baffled king composing Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Your faith was strong but you needed proof\n You saw her bathing on the roof\n Her beauty and the moonlight overthrew her\n She tied you to a kitchen chair\n She broke your throne, and she cut your hair\n And from your lips she drew the Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Well, maybe there's a God above\n As for me all I've ever learned from love\n Is how to shoot somebody who outdrew you\n But it's not a crime that you're hear tonight\n It's not some pilgrim who claims to have seen the Light\n No, it's a cold and it's a very broken Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Instrumental\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Well people I've been here before\n I know this room and I've walked this floor\n You see I used to live alone before I knew ya\n And I've seen your flag on the marble arch\n But listen love, love is not some kind of victory march, no\n It's a cold and it's a broken Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n There was a time you let me know\n What's really going on below\n But now you never show it to me, do you?\n And I remember when I moved in you\n And the holy dove she was moving too\n And every single breath we drew was Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Now I've done my best, I know it wasn't much\n I couldn't feel, so I tried to touch\n I've told the truth, I didnt come here to London just to fool you\n And even though it all went wrong\n I'll stand right here before the Lord of song\n With nothing, nothing on my tongue but Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Hallelujah, Hallelujah\n Hallelujah",
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