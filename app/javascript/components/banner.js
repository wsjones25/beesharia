import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["The UK's Only Shariah Compliant", "Lending Marketplace"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
