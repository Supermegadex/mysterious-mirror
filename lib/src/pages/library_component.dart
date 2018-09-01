import 'package:angular/angular.dart';
import 'package:strange_mirror/puzzles/library/card.dart';
import 'package:strange_mirror/src/components/card_component.dart';

@Component(
  selector: 'page-library',
  templateUrl: 'library_component.html',
  styleUrls: [
    'library_component.css'
  ],
  directives: [
    NgFor,
    CardComponent
  ]
)
class LibraryPage {
  List<Card> cards = [
    Card("Alice in Wonderland", "Caroll, Lewis", "Literature", true),
    Card("Family Limitation", "Sanger, Margaret", "Social Science", false),
    Card("Great Gatsby, The", "Fitzgerald, F. Scott", "Literature", false),
    Card("History of Pyu Alphabet, A", "Myat, Tha", "Language", true),
    Card("Idaho: A Guide in Word and Pictures", "Federal Writer's Project", "Information", false),
    Card("Interpretation of Dreams, The", "Freud, Sigmund", "Psychology", true),
    Card("On the Origin of Species", "Darwin, Charles", "Science", true),
    Card("Pragmatism", "James, William", "Psychology", false),
    Card("Principia Mathematica", "Newton, Isaac", "Science", false),
    Card("Souls of Black Folk, The", "DuBois, W.E.B.", "Social Sciences", true),
    Card("Tarzan of the Apes", "Burroughs, Edgar Rice", "Literature", false),
    Card("Wonderful Wizard of Oz, The", "Baum, L. Frank", "Literature", true)
  ];
}
