import 'package:meta/meta.dart';

import 'div_element.dart';
import 'js.dart' as js;

abstract class Element<T extends js.Element> {
  ///
  @protected
  Element(this.jsObject) {
    jsObject.dartObject = this;
  }

  @protected
  final T jsObject;
}

DivElement div() => tagName('div') as DivElement;

Element tagName(String tag) {
  final jsElement = js.document.createElement(tag);

  if (tag == 'div') {
    return DivElement(jsElement);
  }

  return null;
}
