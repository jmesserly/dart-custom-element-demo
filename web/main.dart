@JS()
library main;

import 'dart:html';
import 'package:js/js.dart';

@JS('CustomElement')
abstract class JSCustomElement<T extends CustomElement> implements HtmlElement {
  T asDart;
}

typedef CustomElementConstructor = CustomElement Function(JSCustomElement e);

@JS('defineElement')
external void defineElement(String name, CustomElementConstructor constructor);

class CustomElement {
  final JSCustomElement element;

  CustomElement(this.element) {
    element.asDart = this;
  }

  void connected() {}
  void disconnected() {}
}

class HelloElement extends CustomElement{
  HelloElement(JSCustomElement element) : super(element);

  void sayHello() {
    element.text = 'Hello from Dart!';
    element.style.color = '#0175C2';
  }
}

class GoodbyeElement extends CustomElement {
  GoodbyeElement(JSCustomElement element) : super(element);

  void sayGoodybe() {
    element.text = 'Goodbye from Dart!';
    element.style.color = '#0175C2';
  }
}

void main() {
  defineElement('dart-goodbye', allowInterop((e) => GoodbyeElement(e)));
  defineElement('dart-hello', allowInterop((e) => HelloElement(e)));

  var hello = document.body.append(Element.tag('dart-hello')) as JSCustomElement<HelloElement>;
  hello.asDart.sayHello();

  var goodbye = document.body.append(Element.tag('dart-goodbye')) as JSCustomElement<GoodbyeElement>;
  goodbye.asDart.sayGoodybe();
}
