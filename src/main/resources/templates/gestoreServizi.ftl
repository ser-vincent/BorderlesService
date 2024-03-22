 

   <#include "start.ftl">
   <#include "headerAmm.ftl">
 
<div class="tutti-servizzi-section">
    <h2 class="mt-2">Gestore dei servizi</h2>
    <div class="container-card-servizzi">
        <#list lista as sp>
            <#if sp.tiposervizio=="BUSINESS">
        <div class="col-sm gestore-servizi-card-container">
            <div class="card">
                <img class="gestore-servizi-section-image" src="/services/display?id=${sp.id}" class="card-img-top"
                    alt="">
                <div class="card-body">
                    <h5 class="card-title">${sp.nome}</h5>
                    <p class="card-text">${sp.descrizione}</p>

                    <a href="/services/paginaModificaServizio?id=${sp.id}" class="btn btn-primary"><i class="fa-solid fa-pen-clip"></i> Modifica</a>
                    <a href="/services/rimuoviServizio?id=${sp.id}" class="btn btn-danger"><i class="fa-solid fa-trash"></i> Elimina</a>

                </div>
            </div>
        </div>
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

                    <a href="/services/paginaModificaServizio?id=${sp.id}" class="btn btn-primary"><i class="fa-solid fa-pen-clip"></i> Modifica</a>
                    <a href="/services/rimuoviServizio?id=${sp.id}" class="btn btn-danger"><i class="fa-solid fa-trash"></i> Elimina</a>
                </div>
            </div>
        </div>
        </#if>
        </#list>

    </div>

</div>
    
    <#include "footer.ftl">
    <#include "end.ftl">