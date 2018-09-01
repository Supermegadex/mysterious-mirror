import 'dart:html';
import 'package:angular/angular.dart';
import 'package:stagexl/stagexl.dart';

class ChessPiece {
  String name;
  String url;
  num x;
  num y;

  ChessPiece(this.name, this.url, this.x, this.y);
}

@Component(
  selector: 'page-chess',
  templateUrl: 'chess_component.html',
  styleUrls: ['chess_component.css']
)
class ChessPage implements AfterViewInit {

  @ViewChild('stage') CanvasElement canvas;
  List<ChessPiece> pieces = [
    ChessPiece("bk1", "black_king", 200, 100),
    ChessPiece("br1", "black_rook", 150, 50),
    ChessPiece("br2", "black_rook", 300, 50),
    ChessPiece("bb1", "black_bishop", 300, 150),
    ChessPiece("wq1", "white_queen", 350, 300),
    ChessPiece("wr1", "white_rook", 200, 400),
    ChessPiece("wk1", "white_knight", 100, 300),
    ChessPiece("wk2", "white_knight", 400, 350)
  ];

  ChessPage();

  ngAfterViewInit() {
    var stage = Stage(canvas);
    var renderLoop = RenderLoop();
    renderLoop.addStage(stage);
    
    var resourceManager = ResourceManager()
      ..addBitmapData("chessboard", "/assets/chess.jpg")
      ..addBitmapData("black_king", "/assets/chess-set/black_king.png")
      ..addBitmapData("black_rook", "/assets/chess-set/black_rook.png")
      ..addBitmapData("black_bishop", "/assets/chess-set/black_bishop.png")
      ..addBitmapData("white_queen", "/assets/chess-set/white_queen.png")
      ..addBitmapData("white_rook", "/assets/chess-set/white_rook.png")
      ..addBitmapData("white_knight", "/assets/chess-set/white_knight.png");

    resourceManager.load().then((_) {
      var chessboard = Bitmap(resourceManager.getBitmapData("chessboard"));
      chessboard.width = 500;
      chessboard.height = 500;
      stage.addChild(chessboard);
      pieces.forEach((piece) {
        var bmp = Bitmap(resourceManager.getBitmapData(piece.url));
        var sprite = Sprite();
        sprite.addChild(bmp);
        bmp.width = 50;
        bmp.height = 50;
        sprite.width = 50;
        sprite.height = 50;
        sprite.x = piece.x;
        sprite.y = piece.y;
        stage.addChild(sprite);
        sprite.addEventListener(MouseEvent.MOUSE_DOWN, (ev) => sprite.startDrag());
        sprite.addEventListener(MouseEvent.MOUSE_UP, (ev) => sprite.stopDrag());
        sprite.addEventListener(TouchEvent.TOUCH_BEGIN, (ev) => sprite.startDrag());
        sprite.addEventListener(TouchEvent.TOUCH_END, (ev) => sprite.stopDrag());
      });
    });
  }
}
