@JS()
library html_proto.src.js.element;

import 'package:js/js.dart';

import 'dart_wrapper.dart';

@JS('Element')
abstract class Element implements DartWrapper {}
