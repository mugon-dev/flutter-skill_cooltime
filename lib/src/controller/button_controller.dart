import 'dart:async';

class ButtonController {
  //bloc 패턴
  //어떤 버튼을 눌렀는지 확인
  final StreamController<ButtonType> _actionButtonSubject =
      StreamController<ButtonType>();

  Stream<ButtonType> get actionButtonStream => _actionButtonSubject.stream;

  action(ButtonType type) {
    _actionButtonSubject.sink.add(type);
  }

  dispose() {
    _actionButtonSubject.close();
  }
}

enum ButtonType { ACTION1, ACTION2 }
