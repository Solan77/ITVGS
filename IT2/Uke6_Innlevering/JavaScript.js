function myFunction(imgs) {
    var storImg = document.getElementById("stortimg");
    var imgTekst = document.getElementById("imgtekst");
    storImg.src = imgs.src;
    imgTekst.innerHTML = imgs.alt;
    storImg.parentElement.style.display = "block";
}