  function tall() {
    var tall = prompt("Antall mulige tall");
    var x = document.getElementById('nu');
    x.innerHTML = heltr(0, tall);
    if (tall != null) {
      var y = tall
    }

  }
  function heltr(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
  }
