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
                    <img src="/user/displayProfile?id=${ups.id}" alt="avatar" class="rounded-circle img-fluid"
                        style="width: 150px; height: 150px; border: 5px solid rgb(88, 146, 255); border-radius: 50%;">

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
                            <p class="mb-0">Nome</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana" style="border: none; background: transparent;"
                                value="${ups.nome}" readonly>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Cognome</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana" style="border: none; background: transparent;"
                                value="${ups.cognome}" readonly>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Email</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="text-muted mb-0 banana"
                                style="border: none; background: transparent; width: 40%;" value="${ups.email}"
                                readonly>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Contatto</p>
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