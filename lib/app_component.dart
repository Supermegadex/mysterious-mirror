import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:strange_mirror/src/pages/chess_component.dart';
import 'package:strange_mirror/src/pages/dewey_component.dart';
import 'package:strange_mirror/src/pages/library_component.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:strange_mirror/src/pages/message_component.dart';
import 'package:strange_mirror/src/pages/theater_component.dart';

class Link {
  String text;
  String page;

  Link(this.text, this.page);
}

@Component(
  selector: 'my-app',
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
    'app_component.css'
  ],
  templateUrl: 'app_component.html',
  directives: [
    NgModel,
    NgIf,
    NgFor,
    LibraryPage,
    ChessPage,
    DeweyPage,
    MessagePage,
    TheaterPage,
    MaterialButtonComponent,
    materialInputDirectives
  ]
)
class AppComponent {
  String page = "main";

  String currentCode;
  String cellarCode = "841538";
  String deskCode = "mlc";

  List<Link> links = [
    Link("Enter Code", 'main')
  ];

  checkCode() {
    if (currentCode == "library") {
      links.add(
        Link("Library", 'library')
      );
      currentCode = "";
      setPage('library');
    }

    if (currentCode == "chess") {
      links.add(
        Link("Chess", 'chess')
      );
      currentCode = "";
      setPage('chess');
    }

    if (currentCode == "dewey") {
      links.add(
        Link("Dewey Reference", 'dewey')
      );
      currentCode = "";
      setPage('dewey');
    }

    if (currentCode == deskCode) {
      links.add(
        Link("First Message", 'message1')
      );
      currentCode = "";
      setPage('message1');
    }

    if (currentCode == "facehead") {
      links.add(
        Link("Second Message", 'message2')
      );
      currentCode = "";
      setPage('message2');
    }

    if (currentCode == "bed") {
      links.add(
        Link("Third Message", 'message3')
      );
      currentCode = "";
      setPage('message3');
    }

    if (currentCode == "light") {
      links.add(
        Link("Lightbox", 'light')
      );
      currentCode = "";
      setPage('light');
    }

    if (currentCode == "theater") {
      links.add(
        Link("Theater", 'theater')
      );
      currentCode = "";
      setPage('theater');
    }
  }

  printStatus(bool status) {

  }

  setPage(String newPage) {
    page = newPage;
  }
}
