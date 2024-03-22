// function appari() {
//   let service = $(".backdrop");
//   service.toggleClass("is-hidden");
// }

// $(".category-auto").on("click", appari);
// $(".backdrop").on("mouseout", appari);

const swiper = new Swiper(".swiper-container", {
  loop: true,
  slidesPerView: 1, // Imposta il numero di slide visibili inizialmente
  spaceBetween: 20,
  breakpoints: {
    768: {
      slidesPerView: 2,
    },
    1280: {
      slidesPerView: 3,
    },
  },
  navigation: {
    nextEl: ".carousel-button.next",
    prevEl: ".carousel-button.prev",
  },
});

const swiper1 = new Swiper(".swiper-container-digitale", {
  loop: true,
  slidesPerView: 1, // Imposta il numero di slide visibili inizialmente
  spaceBetween: 20,
  breakpoints: {
    768: {
      slidesPerView: 2,
    },
    1280: {
      slidesPerView: 3,
    },
  },
  navigation: {
    nextEl: ".carousel-button.next1",
    prevEl: ".carousel-button.prev1",
  },
});

const swiper2 = new Swiper(".swiper-container-car", {
  loop: true,
  slidesPerView: 1, // Imposta il numero di slide visibili inizialmente
  spaceBetween: 20,
  breakpoints: {
    768: {
      slidesPerView: 2,
    },
    1280: {
      slidesPerView: 3,
    },
  },
  navigation: {
    nextEl: ".carousel-button.next2",
    prevEl: ".carousel-button.prev2",
  },
});


