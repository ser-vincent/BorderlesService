
<#include "start.ftl">

<#include "headerAmm.ftl">



<div id="pagina">
    <div class="flex-container aggiungi-servizio-container">
        <form action="/services/aggiungiServizio" method="post" enctype="multipart/form-data">
            <div class="item1">
                Nome
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="nome" name="nome" required/>
                    <label for="floatingInput">Nome servizio</label>
                </div>
            </div>
            <div class="item2">
                Descrizione

                <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2"
                        name="descrizione" style="height: 100px" required></textarea>
                    <label for="floatingTextarea2">Descrizione</label>

                </div>
            </div>
            <label for="tipoServizio">Tipo servizio</label>
            <select class="form-select mb-3 mt-3" name="option" required>
                <option value="none">---</option>
                <option value="BUSINESS" selected>Business</option> <!-- Imposta l'opzione selezionata se è Business -->
                <option value="PRIVATO" selected>Privato</option> <!-- Imposta l'opzione selezionata se è Privato -->
            </select>
            
            <div class="form-img form-img-aggiungi">
               
                <label >Carica Immagine</label>
                <div >
                    <img src="" alt="" class="profile-image" id="profileImage" aria-placeholder=""
                        style="width: 100%; max-height: 100%;">
                    
                </div>
                <input type="file" id="image" accept="image/*" name="img" onchange="previewProfileImage(this)">
                
            </div>
            <button class="btn btn-primary mt-1" onclick="uploadProfileImage()"><i class="fa-solid fa-floppy-disk"></i> Carica</button>
            
        </form>

    </div>



</div>



      <#include "footer.ftl">
      <#include "end.ftl">
