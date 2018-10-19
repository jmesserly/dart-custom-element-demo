import 'element.dart';
import 'js.dart' as js;

abstract class HtmlElement<T extends js.HtmlElement> extends Element<T> {
  HtmlElement(T jsObject) : super(jsObject);

  void click() {
    print('Im clicking');
    jsObject.click();
  }

  void focus() {
    print('Im focusing');
    jsObject.focus();
  }

  void blur() {
    print('Im bluring');
    jsObject.blur();
  }

  String get text => jsObject.innerText;
  set text(String value) {
    jsObject.innerText = value;
  }
}
