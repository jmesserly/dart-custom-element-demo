class CustomElement extends HTMLElement {
  constructor() { 
    super(); 
    this.asDart = null;
  }

  connectedCallback() {
    this.asDart.connected();
  }

  disconnectedCallback() {
    this.asDart.disconnected();
  }
}
window.CustomElement = CustomElement;

function defineElement(name, construct) {
  customElements.define(name, class extends CustomElement {
    constructor() {
      super();
      construct(this);
    }
  });
};
