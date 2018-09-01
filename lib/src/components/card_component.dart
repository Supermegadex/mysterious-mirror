import 'package:angular/angular.dart';
import 'package:strange_mirror/puzzles/library/card.dart';

@Component(
  selector: 'app-card',
  templateUrl: 'card_component.html',
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'card_component.css'
  ],
  directives: [
    NgIf
  ]
)
class CardComponent {
  @Input() Card card;
  @Input() int elevation = 2;
}
