class CustomElement extends HTMLElement {
  constructor() { 
    super(); 
    this.dartObject = null;
  }

  connectedCallback() {
    this.dartObject.connected();
  }

  disconnectedCallback() {
    this.dartObject.disconnected();
  }

  attributeChangedCallback(attr, oldVal, newVal) {
    this.dartObject.attributeChanged(attr, oldVal, newVal);
  }
}
window.CustomElement = CustomElement;

function defineElement(name, construct, observed) {
  customElements.define(name, class extends CustomElement {
    constructor() {
      super();
      construct(this);
    }

    static get observedAttributes() { return observed; }
  });
};
