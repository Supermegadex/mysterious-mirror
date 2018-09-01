import 'package:angular/angular.dart';

@Component(
  selector: 'page-dewey',
  templateUrl: 'dewey_component.html',
  styleUrls: ['dewey_component.css'],
  directives: [NgFor]
)
class DeweyPage {
  List<List> secs = [
    ['100', 'Psychology and Philosophy'],
    ['200', 'Religion'],
    ['300', 'Social Sciences'],
    ['400', 'Language'],
    ['500', 'Pure Science'],
    ['600', 'Technology'],
    ['700', 'Arts & Recreation'],
    ['800', 'Literature'],
    ['900', 'History & Geography']
  ];
}
