import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';
import 'package:mc_music_app/barra_laterale/barralaterale.dart';

class Eventi extends StatefulWidget {
  const Eventi({super.key});
  @override
  State<Eventi> createState() => CreaEventi();

}
class CreaEventi extends State<Eventi> {

  DateTime oggi = DateTime.now();

  void giornoSelezionato(DateTime day,DateTime focusedDay){

    setState(() {
      oggi = day;
    });

  }

   @override
  Widget build(BuildContext context) {
        return  Scaffold(
          drawer: const Barralaterale(),
          appBar: AppBar(
             backgroundColor: const Color.fromARGB(255, 100, 133, 205),
            title: const Center(
              child: Text(
                'Calendario Eventi',
                style: TextStyle(fontSize: 20),
                ),
            ), 

          ),
          body: Column(
          children: [

           

              TableCalendar(
                headerStyle: const HeaderStyle(formatButtonVisible: false,titleCentered: true),
                locale: "it_IT",
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: oggi,
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day)=> isSameDay(day, oggi),
                  onDaySelected: giornoSelezionato,


              )
            
          ]     
          )
    );

        

      }
}