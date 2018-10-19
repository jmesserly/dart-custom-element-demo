@JS()
library html_proto.src.js.document;

import 'package:js/js.dart';

import 'html_element.dart';

@JS('Document')
abstract class Document {
  HtmlElement createElement(String tag);
}

@JS('document')
external Document get document;
