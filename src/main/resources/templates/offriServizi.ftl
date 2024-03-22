 
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
    
<div class="tutti-servizzi-section">
    <h2 class="mt-3">Offri un servizio ai tuoi clienti</h2>
    <div class="container-card-servizzi">
        <#list lista as sp>
            <#if sp.tiposervizio==utente.tipoutente>
        <div class="col-sm gestore-servizi-card-container">
            <div class="card">
                <img class="gestore-servizi-section-image" src="/services/display?id=${sp.id}" class="card-img-top"
                    alt="">
                <div class="card-body">
                    <h5 class="card-title">${sp.nome}</h5>
                    <p class="card-text">${sp.descrizione}</p>
                    <#assign check = 0>
                    <#list offerti as o>
                    <#if o.id = sp.id>
                    <#assign check = 1>
                    </#if>
                    </#list>
                    
                    <#if check = 0>
                    <a href="/services/aggiungiServizioOfferto?id=${sp.id}" class="btn btn-primary"><i class="fa-solid fa-handshake"></i> Offri servizio</a>
                    <#else>
                    <a href="#" class="btn btn-secondary disabled aria-disabled="true"><i class="fa-solid fa-hand"></i> Già offerto</a>
                    </#if>
                </div>
            </div>
            
        </div>
        </#if>
       </#list>
       
    </div>

</div>
    
    <#include "footer.ftl">
    <#include "end.ftl">