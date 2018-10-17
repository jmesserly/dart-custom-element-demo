@JS()
library main;

import 'dart:html';
import 'package:js/js.dart';

@JS('DemoElement')
abstract class JSDemoElement implements HtmlElement {
  DemoElement asDart;

  static DemoElement Function(JSDemoElement e) createInstance;
}

class DemoElement {
  final JSDemoElement _element;
  DemoElement(this._element) {
    _element.asDart = this;
  }
  void sayHello() {
    _element.text = 'Hello from Dart!';
    _element.style.color = '#0175C2';
  }
}

void main() {
  JSDemoElement.createInstance = allowInterop((e) => DemoElement(e));
  var demo = document.body.append(Element.tag('dart-demo')) as JSDemoElement;
  demo.asDart.sayHello();
}
