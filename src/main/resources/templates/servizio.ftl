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
    
<div class="container" style="margin-top:2% ">
        <div class="row servizio-div-info">
            <div class="col-md-5">
                <img data-src="holder.js/200x200" class="img-thumbnail" alt="" style="width: 768px; height: 432px;"
                    src="/services/display?id=${servizio.id}"
                    data-holder-rendered="true">
            </div>
            <div class="col-md-5" style="padding-left: 40px;">
                <h2 class="ts">${servizio.nome}</h2>
                <p>${servizio.tiposervizio}</p>
                
                <p><b>${servizio.descrizione}</b></p>
                	<#assign check = 0>
                    <#list preferiti as p>
                    <#if p.id = servizio.id>
                    <#assign check = 1>
                    </#if>
                    </#list>
                
                <#if check = 0 && tipo != "AMMINISTRATORE">
                <a href="/services/aggiungiPreferito?id=${servizio.id}" class="btn btn-outline-success cart"><i class="fa-solid fa-heart-circle-plus"></i> Aggiungi ai preferiti</a>
                <#elseif check = 1 && tipo != "AMMINISTRATORE">
                <a href="/services/rimuoviPreferito?id=${servizio.id}" class="btn btn-outline-danger cart" role="button"><i class="fa-solid fa-heart-circle-minus"></i> Rimuovi dai preferiti</a>
                <#else>
                <a href="/services/aggiungiPreferito?id=${servizio.id}" class="btn btn-outline-secondary disabled aria-disabled="true" cart"><i class="fa-solid fa-heart-circle-plus"></i> Aggiungi ai preferiti</a>
                </#if>
            </div>
        </div>
    </div>
    
    <div class="table-containerService">
    <table id="example" class="table-servizi table table-hover " style="width: 100%">
            <thead class="table-dark">
                <tr>
                    <th>Immagine</th>
                    <th>Utente</th>
                    <th>Email</th>
                    <th>Contatto</th>
                    <th></th>
                    
                </tr>
            </thead>
            <tbody>
            
              
                
                <#list utentiWithImage as uwi>
                    <tr class="allinea">
                    <td><img class="ciao" src="/user/displayProfile?id=${uwi.id}" alt="" style="width: 30px; height: 30px;"></td>
                    <td>${uwi.nome} ${uwi.cognome}</td>
                    
                    <td>${uwi.email}</td>
                    <td>${uwi.cell}</td>
                    <#if servizio.tiposervizio = "PRIVATO">
                    
                    <td><a href="/services/serviziUser?id=${uwi.id}" class="btn btn-outline-primary" role="button"><i class="fa-solid fa-eye"></i> Visita</a></td>
                    <#else>
                    
                    <td><a href="/services/serviziUser?id=${uwi.id}" class="btn btn-outline-primary" role="button"><i class="fa-solid fa-eye"></i> Visita</a></td>
                    </#if>
                    </tr>
                    </#list>
                    
                    
                    <#list utentiNoImage as uni>
                    <tr class="allinea">
                    <td ><img class="ciao" src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar style="width:60px!important; height:60px!important;"></td>
                    <td>${uni.nome} ${uni.cognome}</td>
                    <td>${uni.email}</td>
                    <td>${uni.cell}</td>
                    <#if servizio.tiposervizio = "PRIVATO">
                    
                    <td><a href="/services/serviziUser?id=${uni.id}" class="btn btn-outline-primary" role="button"><i class="fa-solid fa-eye"></i> Visita</a></td>
                    <#else>
                   
                    <td><a href="/services/serviziUser?id=${uni.id}" class="btn btn-outline-primary" role="button"><i class="fa-solid fa-eye"></i> Visita</a></td>
                    </#if>
                    </tr>
                    </#list>
                    
                
            </tbody>

        </table>
      </div>
    <br>
    <br>
    <br>

    <!-- Servizi Generici -->
       
       <section class="evidence-section" id="service_section">
         <div class="container">

            <div class="tv_section-container-primary">

                <h2 class="servizio-section-tittle text-white fw-bold"><i class="fa-solid fa-layer-group"></i> Servizi Generici</h2>
                <div class="tv_section__slider">
                    <button class="tv_section__button carousel-button prev" type="button">
                      <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: white;
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: black; padding-top: 6.8px;"></i></span>
                    </button>

                   <div class="tv_section__container swiper-container">
                       <ul class="tv_section__list swiper-wrapper">
                       <#list lista as sp>
                          <li class="swiper-slide">
                              <article class="tv-card">
                                  <img class="section-image" src="/services/display?id=${sp.id}" alt="">
                                  
                                  <h3 class="tv-card__title mt-3">
                                      <a href="/user/recuperoUtenti?id=${sp.id}" class=" fw-bold text-dark d-flex justify-content-center align-items-center mt-1 ml-3" style="transform: translateX(-10px);">${sp.nome}</a>
                                  </h3>
                                  <p class="text-dark text-center">${sp.descrizione}</p>
                                  <div class="line ml-4 mb-1" style="max-width: 80%;"></div>
                                  <a href="/user/recuperoUtenti?id=${sp.id}" class="btn btn-primary btn-carousel"><i class="fa-solid fa-eye"></i> Visita</a></a>
                              </article>
                          </li> 
                          </#list>

                      </ul>

                   </div>
                  <button class="tv_section__button carousel-button next" type="button">
                       <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: white;
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: black; padding-top: 6.8px;"></i></span>
                  </button>
              </div>
          </div>
      </div>
  </section>
<#include "footer.ftl">
<#include "end.ftl">