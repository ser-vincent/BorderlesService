// $("#auto-services").hide(); // Nascondi la lista all'avvio della pagina

$(".category-auto").hover(function () {
  $(".backdrop").toggleClass("is-hidden");
});

$(".backdrop").mouseleave(function () {
  $(".backdrop").toggleClass("is-hidden");
});

$(".category-public").hover(function () {
  $(".div-table-service").toggleClass("is-hidden");
});

$(".div-table-service").mouseleave(function () {
  $(".div-table-service").toggleClass("is-hidden");
});



$(".bottone-modigica-utente").click(function () {
$(".togli-readOnly").removeAttr("readonly");
 $(".bottone-salva-utente").toggleClass("is-hidden");
  $(".bottone-modigica-utente").toggleClass("is-hidden");
});

$(".bottone-salva-utente").click(function () {
$(".togli-readOnly").attr("readonly", "readonly");
 $(".bottone-modigica-utente").toggleClass("is-hidden");
  $(".bottone-salva-utente").toggleClass("is-hidden");
});