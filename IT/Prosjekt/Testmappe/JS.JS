var skriv
var x
var y


  function tall() {
    skriv = prompt("Antall mulige tall");
    x = document.getElementById('nu');
    x.innerHTML = heltr(0, skriv);
    if (skriv != null) {
      y = skriv
    }

  }
  function heltr(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
  }
