@JS()
library html_proto.src.js.html_element;

import 'package:js/js.dart';

import 'element.dart';

@JS('HTMLElement')
abstract class HtmlElement implements Element {
  void click();
  void focus();
  void blur();

  String get innerText;
  set innerText(String value);
}
