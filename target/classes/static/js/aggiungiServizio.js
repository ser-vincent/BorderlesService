function previewProfileImage(uploader) {
    if (uploader.files && uploader.files[0]) {
        var imageFile = uploader.files[0];
        var reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById('profileImage').src = e.target.result;
        }
        reader.readAsDataURL(imageFile);
    }
}

function uploadProfileImage() {
    // Implementa la logica per caricare l'immagine sul server
    // Puoi utilizzare AJAX o qualsiasi altro metodo per inviare i dati dell'immagine
    // al backend.
    // Esempio: invia i dati dell'immagine come FormData a un endpoint del server.
}