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
        <h2 class="mt-2">Scegli il tuo servizio</h2>
        <div class="container-card-servizzi">
			<#list lista as sp>
			<#if sp.tiposervizio =="BUSINESS">
            <div class="col-sm">
                <div class="card">
                   <img class="section-image" src="/services/display?id=${sp.id}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${sp.nome}</h5>
                        <p class="card-text">${sp.descrizione}</p>
                        
                        <a href="#" class="btn btn-primary">Acquista</a>
                    </div>
                </div>
            </div>
            </#if>
           </#list>
           <#list lista as sp>
			<#if sp.tiposervizio =="PRIVATO">
            <div class="col-sm">
                <div class="card">
                   <img class="section-image" src="/services/display?id=${sp.id}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${sp.nome}</h5>
                        <p class="card-text">${sp.descrizione}</p>
                        
                        <a href="#" class="btn btn-primary">Contattami</a>
                    </div>
                </div>
            </div>
            </#if>
           </#list>
         
        </div>

    </div>
    
    <#include "footer.ftl">
    <#include "end.ftl">