import '../../utility/helpers/ui_event_handler.dart';

class HomeViewModel {
  late UiEventHanldler _uiEventHanldler;

  UiEventHanldler get uiEventHanldler => _uiEventHanldler;

  void init() {
    _uiEventHanldler = UiEventHanldler();
  }
}
