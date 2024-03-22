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

                    <br> </br>
                    <div class="d-flex justify-content-center mb-2">
                        <div>


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
                            <p class="mb-0 fw-bold"><i class="fa-solid fa-user"></i> Nome</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana" style="border: none; background: transparent;"
                                value="${ups.nome}" readonly>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0 fw-bold"><i class="fa-solid fa-user"></i> Cognome</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana" style="border: none; background: transparent;"
                                value="${ups.cognome}" readonly>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0 fw-bold"><i class="fa-solid fa-envelope"></i> Email</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana"
                                style="border: none; background: transparent; width: 40%;" value="${ups.email}"
                                readonly>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-3 ">
                            <p class="mb-0 fw-bold"><i class="fa-solid fa-phone"></i> Contatto</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana" style="border: none; background: transparent;"
                                value="${ups.cell}" readonly>
                        </div>
                    </div>
                </div>



            </div>
            
        </div>
        <div class="tutti-servizzi-section">
                <h2>${ups.nome} offre anche</h2>
                <div class="container-card-servizzi">
                    <#list pls as sp>
                        
                            <div class="col-sm gestore-servizi-card-container">
                                <div class="card">
                                    <img class="gestore-servizi-section-image" src="/services/display?id=${sp.id}"
                                        class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">${sp.nome}</h5>
                                        <p class="card-text">${sp.descrizione}</p>


                                    </div>
                                </div>
                            </div>
                        
                    </#list>

                </div>
            </div>
    </div>
</div>
                   
             
           
                <#include "footer.ftl">
      			<#include "end.ftl">