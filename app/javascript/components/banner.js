import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Ethical investing", "FAC regulated", "Do something interesting with your money"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
