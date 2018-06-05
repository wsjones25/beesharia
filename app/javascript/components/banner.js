import Typed from 'typed.js';


function loadDynamicBannerText() {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Ethical investing", "FCA regulated", "Do something interesting with your money"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
