<!-- Start -->
 
	<#include "start.ftl">

    <!--Header-->
    
    <#if tipo == "PRIVATO"> 
    <#include "headerPrivato.ftl">
    <#elseif tipo == "BUSINESS">
    <#include "headerAzienda.ftl">
    <#elseif tipo == "AMMINISTRATORE">
    <#include "headerAmm.ftl">
    </#if>
	<div class="profilo-container">
          <div class="row" style="margin: 2%;">
            <div class="col-lg-4">
              <div class="card mb-4">
                <div class="card-body text-center">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px; height: 150px;">
                  <h5 class="my-3">${utente.nome} </h5>
                  <p class="text-muted mb-1 ml-4">${tipo}</p>
                  <br> </br>
                  <div class="d-flex justify-content-center mb-2">
                  <div>
                  
                  <form action="/user/uploadProfile" method="POST" enctype="multipart/form-data">
                  <label for="img"></label>
                  <input type="file" id="image" accept="image/*" name="image" onchange="previewProfileImage(this)" required>
                  <button type="submit" class="btn btn-primary"><i class="fa-solid fa-arrow-up-from-bracket"></i> Carica Immagine</button>
                  </form>
                  </div>
                  </div>
                </div>
              </div>
              
              
            </div>
            <div class="col-lg-8" style="">
              <div class="card mb-4">
                <div class="card-body">
                  <div class="row">
                  
                    <div class="col-sm-3">
                    <form id="editProfile" action="/user/editProfile" method="POST">
                        <p class="mb-0 fw-bold"><i class="fa-solid fa-user"></i> Nome</p>
                    </div>
                    
                    <div class="col-sm-9">
                      <input class="togli-readOnly  mb-0 banana" name = "nome" style="border: none; background: transparent;" value="${utente.nome}" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0 fw-bold"><i class="fa-solid fa-user"></i> Cognome</p>
                    </div>
                    <div class="col-sm-9">
                        <input class="togli-readOnly  mb-0 banana" name = "cognome" style="border: none; background: transparent;" value="${utente.cognome}" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0 fw-bold"><i class="fa-solid fa-envelope"></i> Email</p>
                    </div>
                    <div class="col-sm-9">
                        <input class="togli-readOnly  mb-0 banana" name = "email" style="border: none; background: transparent; width: 40%;" value="${utente.email}" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0 fw-bold"><i class="fa-solid fa-lock"></i> Password</p>
                    </div>
                    <div class="col-sm-9">
                        <input type="password" class="togli-readOnly  mb-0 banana" name = "psw" style="border: none; background: transparent;" value="${utente.password}" readonly>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0 fw-bold"><i class="fa-solid fa-phone"></i> Contatto</p>
                    </div>
                    <div class="col-sm-9">
                        <input class="togli-readOnly  mb-0 banana" name = "cell" style="border: none; background: transparent;" value="${utente.cell}" readonly>
                    </div>
                  </div>
                </div>
                   
              </div>
              <button type="button" class="btn btn-outline-primary ms-1 bottone-modigica-utente"> <i class="fa-solid fa-pen-to-square"></i> Modifica</button>
        	  <button type="submit" class="btn-saveprofile btn btn-success ms-1 bottone-salva-utente is-hidden"><i class="fa-solid fa-floppy-disk "></i> Salva</button>
              </form>
              </div>
              </div>
              </div>
           
                <#include "footer.ftl">
      			<#include "end.ftl">
              
              
              
              
              
              
              
              
              
              
              
              
              