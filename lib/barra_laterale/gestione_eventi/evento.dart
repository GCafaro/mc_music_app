class Evento {
  final int? id;
  final String titolo;
  final String descrizione;

  Evento({
    this.id,
    required this.titolo,
    required this.descrizione,
  });

  Evento.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        titolo = map["titolo"],
        descrizione = map["descrizione"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "titolo": titolo,
      "descrizione": descrizione,
    };
  }
}
