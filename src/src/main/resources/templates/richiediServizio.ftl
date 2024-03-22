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
    <h2 class="mt-2">Scegli il servizio che ti interessa</h2>
    <div class="container-card-servizzi">
        <#list lista as sp>
            <#if sp.tiposervizio=="BUSINESS">
        <div class="col-sm gestore-servizi-card-container">
            <div class="card-servizi card">
                <img class="gestore-servizi-section-image" src="/services/display?id=${sp.id}" class="card-img-top"
                    alt="">
                <div class="card-body">
                    <h5 class="card-title">${sp.nome}</h5>
                    <p class="card-text">${sp.descrizione}</p>

                    <a href="/user/recuperoUtenti?id=${sp.id}" class="btn btn-primary"><i class="fa-solid fa-handshake"></i> Richiedi</a>


                </div>
            </div>
        </div>
        <br>
        <br>
        </#if>
        </#list>
        <#list lista as sp>
            <#if sp.tiposervizio=="PRIVATO">
        <div class="col-sm gestore-servizi-card-container">
            <div class="card">
                <img class="gestore-servizi-section-image" src="/services/display?id=${sp.id}" class="card-img-top"
                    alt="">
                <div class="card-body">
                    <h5 class="card-title">${sp.nome}</h5>
                    <p class="card-text">${sp.descrizione}</p>

                    <a href="/user/recuperoUtenti?id=${sp.id}" class="btn btn-primary"><i class="fa-solid fa-phone"></i> Contatta</a>

                </div>
            </div>
        </div>
        </#if>
        </#list>

    </div>

</div>

    <#include "footer.ftl">
    <#include "end.ftl">