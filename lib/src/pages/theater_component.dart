import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'dart:math';

@Component(
  selector: 'page-theater',
  templateUrl: 'theater_component.html',
  styleUrls: ['theater_component.css']
)
class TheaterPage {
  SafeResourceUrl url;
  
  TheaterPage(DomSanitizationService sanitizer) {
    String start = Random().nextInt(900).toString();
    url = sanitizer.bypassSecurityTrustResourceUrl(
      'https://www.youtube.com/embed/8QERYEvN3T4?rel=0&controls=0&showinfo=0&autoplay=1&start=' + start
    );
  }
}
