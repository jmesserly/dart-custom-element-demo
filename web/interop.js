class DemoElement extends HTMLElement {
  constructor() {
    super();
    // createInstance is provided by Dart.
    DemoElement.createInstance(this);
  }
}
window.DemoElement = DemoElement;
customElements.define('dart-demo', DemoElement);
