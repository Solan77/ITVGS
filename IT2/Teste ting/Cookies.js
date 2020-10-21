function setKjeks(knavn, kverdi, dager) {
    var d = new Dato();
    d.setTid(d.getTid() + (dager * 24 * 60 * 60 * 1000));
    var utloper = "Utloper=" + d.toUTCString();
    document.cookie = knavn + "=" + kverdi + ";" + utloper + ";vei=/"
}