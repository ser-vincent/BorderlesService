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
    
<div class="tutti-servizzi-section pt-5">
    <h2 class="mt-3">Gestisci quì i tuoi servizi</h2>
    <div class="container-card-servizzi pt-5 pb-5">
        <#list offerti as s>
           
        <div class="col-sm gestore-servizi-card-container">
            <div class="card">
                <img class="gestore-servizi-section-image" src="/services/display?id=${s.id}" class="card-img-top"
                    alt="">
                <div class="card-body">
                    <h5 class="card-title">${s.nome}</h5>
                    <p class="card-text">${s.descrizione}</p>
                    <a href="/services/rimuoviOfferti?id=${s.id}" class="btn btn-danger"><i class="fa-solid fa-handshake-slash"></i> Rimuovi</a>      
                </div>
            </div>     
        </div>
       </#list>
       
    </div>

</div>
    
    <#include "footer.ftl">
    <#include "end.ftl">