import 'html_element.dart';
import 'js.dart' as js;

typedef CustomElementConstructor = CustomElement Function(
    js.CustomElement element);

class CustomElement extends HtmlElement {
  CustomElement(js.HtmlElement element) : super(element);

  void connected() {}
  void disconnected() {}
  void attributeChanged(String attribute, String oldValue, String newValue) {}

  // Register
  static void register(
    String tag,
    CustomElementConstructor constructor, [
    List<String> observed = const <String>[],
  ]) {
    js.defineElement(tag, constructor, observed);
  }
}
