import 'package:html_proto/html.dart';
import 'package:html_proto/src/js.dart' as js;

class GreetingElement extends CustomElement {
  GreetingElement(js.CustomElement element) : super(element);

  void connected() {
    print('Hello I\'m connected now');
    text = 'Hello from Dart';
  }

  void disconnected() {
    print('Goodbye I\'m being disconnected now');
  }

  void attributeChanged(String attribute, String oldValue, String newValue) {
    text = 'Hello from Dart ${newValue}';

    print('Attribute: $attribute');
    print('Old value: $oldValue');
    print('New value: $newValue');
  }
}

void main() {
  CustomElement.register('greeting-element', (e) => GreetingElement(e), ['name']);
}
