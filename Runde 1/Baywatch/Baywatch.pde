String[] textdatei;
String[] Karte_Liste;
String[] Vogel_Liste;
int richtige_verschiebung;

void setup() {
  init();
  //card_list
  print("cardlist = [");
  print(Karte_Liste);
  println("]");
  
  //bird_list
  print("birdlist = [");
  print(Vogel_Liste);
  println("]");

  for (int verschiebung = 0; verschiebung < Vogel_Liste.length-1; verschiebung++) {
    boolean bisher_richtig = true;
    for (int x = 0; x < Vogel_Liste.length-1; x++) {
      if (Karte_Liste[verschiebung+x].equals("?")) {
        //ist Fragezeihen ->egal
      } else {
        if (Karte_Liste[verschiebung+x].equals(Vogel_Liste[x])) {
          //Buchstaben stimmen überein
        } else {
          //Buchstaben stimmen nicht überein -> verschiebung ist falsch
          bisher_richtig = false;
        }
      }
    }
    if (bisher_richtig) {
      richtige_verschiebung = verschiebung;
      println("richtige verschiebung = "+verschiebung);
      
      break;
    }
  }
}
void draw() {
}
void init() {
  textdatei = loadStrings("baywatch1.txt");
  Vogel_Liste = textdatei[0].split(" ");
  //lese Karten Liste dupliziert ein
  Karte_Liste = (textdatei[1]+" "+textdatei[1]).split(" ");
}
