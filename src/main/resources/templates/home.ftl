
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

    <main>
    
        <section class="category-section container-barservices">
            <div class="line"></div>
            <div class="container. ">
                <ul class="category-listsection ">
                    <li class="category-auto text-white fw-bold">Servizi Privati</li>

                    <li class="category-public text-white fw-bold">Servizi Business</li>
 
                </ul>
                <div class="backdrop is-hidden">
                    <ul id="auto-services" class="services-list">
                    
                    <#list lista as sp>
                    <#if sp.tiposervizio == "PRIVATO">
                        <li class="service-text "><a class="text-dark " href="/user/recuperoUtenti?id=${sp.id}">${sp.getNome()}</a></li>
                       </#if>
                        </#list>
                        
                    </ul>
                </div>

                <div class="div-table-service is-hidden">
                    <ul class="services-list1 category-public-table">
                        <#list lista as sp>
                    <#if sp.tiposervizio == "BUSINESS">
                        <li><a class="text-dark " href="/user/recuperoUtenti?id=${sp.id}">${sp.getNome()}</a></li>
                       </#if>
                        </#list>
                    </ul>
                </div>
    
            </div>
        </section>


        <!-- HERO SECTION -->
        <div class="hero-section-loggato">
            <div id="carouselExampleFade" class=" carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner custom-carousel">
                    <div class="carousel-item active">
                        <img src="../img-sfondo/1sfondovirtuale.png" class="d-block w-100" alt="...">
                        
                        <div class="carousel-caption mb-5 ">
                        
                        <h1 class="fw-bold" style="">Cerca ciò di cui hai bisogno</h1>
                        <h3 class="">Visita la nostra pagina dei servizi e inzia la tua ricerca!</h3>
                        
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../img-sfondo/digital.png" class="d-block w-100" alt="...">

                        <div class="carousel-caption mb-5 ">
                        
                        <h1 class="fw-bold">Offri un tuo servizio!</h1>
                        <h3 class="">Rendi i tuoi servizi disponibili alla community!</h3>
                        
                        <#if tipo == "PRIVATO" || tipo == "BUSINESS">
                        <button class="button-37" role="button"><a class="text-white" href="/services/offriServizio">Offri un servizio</a></button>
                        <#else>
                        <div></div>
                        </#if>
   
                        </div>

                    </div>
                    <div class="carousel-item">
                        <img src="../img-sfondo/prodotti.png" class="d-block w-100" alt="...">

                        <div class="carousel-caption mb-5 ">
                        
                        <h1 class="fw-bold">Crea quì il tuo E-Commerce!</h1>
                        <h3 class="">Aggiungi i tuoi prodotti per renderli disponibili ai tuoi clienti!</h3>
                        
                        </div>

                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>


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
                                  <p class="tv-text text-dark text-center">${sp.descrizione}</p>
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

        <!-- Servizi Business -->
        
        <section class="tv_section" id="tv_section">
            <div class="container">
                <div class="tv_section-container-primary">
                    <h2 class="servizio-section-tittle text-dark fw-bold"><i class="fa-solid fa-briefcase"></i> Servizi Business</h2>
                    <div class="tv_section__slider">
                        <button class="tv_section__button carousel-button prev1" type="button">
                             <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: rgb(164, 187, 230);
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: white; padding-top: 6.8px;"></i></span>
                        </button>

                        <div class="tv_section__container swiper-container-digitale">
                            <ul class="tv_section__list swiper-wrapper">
                                <#list lista as sp>
                                <#if sp.tiposervizio == "BUSINESS">
                          <li class="swiper-slide">
                              <article class="tv-card">
                                  <img class="section-image" src="/services/display?id=${sp.id}" alt="">
                                  
                                  <h3 class="tv-card__title mt-3">
                                      <a href="/user/recuperoUtenti?id=${sp.id}" class=" fw-bold mt-1 text-dark d-flex justify-content-center align-items-center ml-3" style="transform: translateX(-10px);"">${sp.nome}</a>
                                  </h3>
                                  <p class="tv-text text-dark text-center">${sp.descrizione}</p>
                                  <div class="line ml-4 mb-1" style="max-width: 80%;"></div>
                                  <a href="/user/recuperoUtenti?id=${sp.id}" class="btn btn-primary btn-carousel"><i class="fa-solid fa-eye"></i> Visita</a></a>
                              </article>
                          </li> 
                          </#if>
                          </#list>

                            </ul>

                        </div>
                        <button class="tv_section__button carousel-button next1" type="button">
                         
                              <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: rgb(164, 187, 230);
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: white; padding-top: 6.8px;"></i></span>
                   
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Servizi Privati -->
        
        <section class="service-auto-section" id="tv_section">
            <div class="container">
                <div class="service-section-container-primary">
                    <h2 class="servizio-section-tittle text-white fw-bold"><i class="fa-solid fa-people-arrows"></i> Servizi Privati</h2>
                    <div class="tv_section__slider">
                        <button class="bottone-caroselliServizi tv_section__button carousel-button prev2" type="button">
                            <span style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: white;
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: black; padding-top: 6.8px;"></i></span>                 
                        </button>

                        <div class="tv_section__container swiper-container-car">
                            <ul class="tv_section__list swiper-wrapper">
                                <#list lista as sp>
                                <#if sp.tiposervizio == "PRIVATO">
                          <li class="swiper-slide">
                              <article class="tv-card">
                                  <img class="section-image" src="/services/display?id=${sp.id}" alt="">
                                  
                                  <h3 class="tv-card__title mt-3">
                                      <a href="/user/recuperoUtenti?id=${sp.id}" class="text-dark d-flex justify-content-center align-items-center fw-bold mt-1 ml-3" style="transform: translateX(-10px);">${sp.nome}</a>
                                  </h3>
                                  <p class="tv-text text-dark text-center">${sp.descrizione}</p>
                                  <div class="line ml-4 mb-1" style="max-width: 80%;"></div>
                                  <a href="/user/recuperoUtenti?id=${sp.id}" class="btn btn-primary btn-carousel"><i class="fa-solid fa-eye"></i> Visita</a></a>

                              </article>
                          </li> 
                          </#if>
                          </#list>

                            </ul>

                        </div>
                        <button class="tv_section__button carousel-button next2" type="button">
                            <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: white;
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: black; padding-top: 6.8px;"></i></span>
                        </button>
                    </div>
                </div>
            </div>
        </section>

    </main>

    <!--Footer-->
 <#include "footer.ftl">

<!--end-->
<#include "end.ftl">