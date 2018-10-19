@JS()
library html_proto.src.js.custom_element;

import 'package:js/js.dart';

import 'html_element.dart';

@JS('CustomElement')
abstract class CustomElement implements HtmlElement {}

@JS('defineElement')
external void defineElement(
    String name, Function constructor, List<String> observed);
