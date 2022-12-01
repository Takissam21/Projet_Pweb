window.onscroll = function () {
  // Quand la fenêtre scroll de 20px vers le bas,
  //le bouton de retour vers le haut apparaît

  mybutton = document.getElementById("myBtn");

  if (document.documentElement.scrollTop > 200) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
};

function topFunction() {
  //Cette fonction ramène la fenêtre vers le haut de la page
  document.documentElement.scrollTop = 0;
  behavior: "smooth";
}
