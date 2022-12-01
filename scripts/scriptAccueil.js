function scrollFunction(elm) {
  //Cette fonction positionne l'ecran au niveau d'un //certain element
  switch (elm) {
    ////////ELEMENTS DE "PRESENTATION"///////////////
    case 1:
      var element = document.querySelector("#qsn");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    case 2:
      var element = document.querySelector("#hist");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    case 3:
      var element = document.querySelector("#act");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    case 4:
      var element = document.querySelector(".head");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    /*//////////////ELEMENTS DE "ACCUEIL"///////////////////////////////*/
    case "struct":
      var element = document.querySelector("#structDuClub");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    case "actus":
      var element = document.querySelector("#actualités");
      element.scrollIntoView({ behavior: "smooth" });
      break;
    case "events":
      var element = document.querySelector("#evenements");
      element.scrollIntoView({ behavior: "smooth" });
      break;
  }
}

window.onscroll = function () {
  //Cette fonction fait apparaitre le bouton pour scroller vers
  //scroller vers le haut quand l'utilisateur a scrollé 200px
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
