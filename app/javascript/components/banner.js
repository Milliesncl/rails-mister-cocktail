import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Choose the best", "New cocktail idea"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
