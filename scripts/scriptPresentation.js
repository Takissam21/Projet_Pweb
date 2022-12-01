function scrollFunction(elm) {
  switch (elm) {
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
    /*/////ACCUEIL////////////*/
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

var s1 = "off";
var s2 = "off";
var s3 = "off";

// Quand la fenêtre scroll de 200px vers le bas, le bouton de retour vers le haut apparaît
window.onscroll = function () {
  mybutton = document.getElementById("myBtn");

  if (document.documentElement.scrollTop > 200) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }

  pres1 = document.querySelectorAll("ol > li > button")[0];
  pres2 = document.querySelectorAll("ol > li > button")[1];
  pres3 = document.querySelectorAll("ol > li > button")[2];

  //Cette partie de la fonction illumine et colorie en jaune le titre dans le sous-menu qui est
  //en train d'être parcouru à l'écran

  if (
    document.documentElement.scrollTop > 110 &&
    document.documentElement.scrollTop < 460
  ) {
    pres1.style.color = "yellow";
    pres1.style.textShadow = "0 0 2px yellow";
    s1 = "on";

    pres2.style.color = "white";
    pres2.style.textShadow = "none";
    s2 = "off";

    pres3.style.color = "white";
    pres3.style.textShadow = "none";
    s3 = "off";
  } else if (
    document.documentElement.scrollTop >= 460 &&
    document.documentElement.scrollTop < 775
  ) {
    pres1.style.color = "white";
    pres1.style.textShadow = "none";
    s1 = "off";

    pres2.style.color = "yellow";
    pres2.style.textShadow = "0 0 2px yellow";
    s2 = "on";

    pres3.style.color = "white";
    pres3.style.textShadow = "none";
    s3 = "off";
  } else if (document.documentElement.scrollTop >= 775) {
    pres1.style.color = "white";
    pres1.style.textShadow = "none";
    s1 = "off";

    pres2.style.color = "white";
    pres2.style.textShadow = "none";
    s2 = "off";

    pres3.style.color = "yellow";
    pres3.style.textShadow = "0 0 2px yellow";
    s3 = "on";
  } else {
    pres1.style.color = "white";
    pres1.style.textShadow = "none";
    s1 = "off";

    pres2.style.color = "white";
    pres2.style.textShadow = "none";
    s2 = "off";
    pres3.style.color = "white";
    pres3.style.textShadow = "none";
    s3 = "off";
  }
};

function topFunction() {
  //Cette fonction ramène la fenêtre vers le haut de la page
  document.documentElement.scrollTop = 0;
  behavior: "smooth";
}

function changeColorIn(elm) {
  elm.style.color = "yellow";
}
function changeColorOut(elm) {
  if (elm == document.getElementById("scroll1") && s1 == "off")
    elm.style.color = "white";
  if (elm == document.getElementById("scroll2") && s2 == "off")
    elm.style.color = "white";
  if (elm == document.getElementById("scroll3") && s3 == "off")
    elm.style.color = "white";
}
