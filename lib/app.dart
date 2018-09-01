import 'dart:html';
import 'puzzles/library/library.dart';

class App {

  var libraryPuzzle = LibraryPuzzle();
  Element mount;

  App(this.mount);

  start() {
    mount.setInnerHtml('boop');
  }
}
