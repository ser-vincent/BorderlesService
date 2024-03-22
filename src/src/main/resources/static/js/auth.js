/*$("#loginForm").submit(function (event) {
  event.preventDefault(); // Prevent form submission

  var email = $("#email").val();
  var password = $("#password").val();

  $.ajax({
    url: "/user/auth",
    type: "POST",
    contentType: "application/json",
    data: JSON.stringify({ email: email, password: password }),
    success: function (response) {
           alert(response); // Visualizza messaggio di successo
        
      // Reindirizza l'utente alla pagina di accesso
      window.location.href = "/user/login";
    },
    error: function (xhr, status, error) {
        // alert(xhr.responseText); // Visualizza messaggio di errore
       var errorMessage = $("<p>")
         .text("Email o password non corretti")
         .css("color", "red")
         .hide();
       errorMessage.insertBefore(".buttonlogin").slideDown();
    },
  });
});*/




$("#loginForm").submit(function (event) {
  event.preventDefault(); // Previeni la sottomissione del modulo

var formData = {
        "email": $("#email").val(),
        "password": $("#password").val()};
  $.ajax({
    url: "/user/auth",
    type: "POST",
    contentType: "application/json",
    data: JSON.stringify(formData),
    dataType: 'text',
    success: function (data) {
            window.location.href = "/user/login"; // Cambia "/nuovaPagina" con l'URL della tua nuova pagina
        },
        error: function (xhr, status, error) {
            var errorMessage = xhr.responseText; // Ottiene il messaggio di errore dalla risposta del server
            var errorMessage = $("<p>")
         .text("Email o password non corretti")
         .css("color", "red")
         .hide();
       errorMessage.insertBefore(".buttonlogin").slideDown();
        }
  });
});
