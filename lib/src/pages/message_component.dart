import 'package:angular/angular.dart';

@Component(
  selector: 'page-message',
  templateUrl: 'message_component.html',
  styleUrls: ['message_component.css'],
  directives: [NgClass]
)
class MessagePage {
  @Input() int message = 0;
  @Input() bool light = false;
}
