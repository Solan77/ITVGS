var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
    showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("bilde");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("teksten");
    if (n > slides.length) { slideIndex = 1 }
    if (n < 1) { slideIndex = slides.length }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" aktiv", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " aktiv";
    captionText.innerHTML = dots[slideIndex - 1].alt;
}