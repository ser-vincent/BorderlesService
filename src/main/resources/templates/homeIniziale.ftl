<!--start-->
<#include "start.ftl">

    <!--Header-->
    <#include "header_login.ftl">
 

    <main>

        <!-- HERO SECTION -->
        <section class="hero-section">
            <div class="container">
                <div class="hero-container">
                    
                    <h1 class="hero-iniziale-title text-white">Tutto ciò che vuoi, quando vuoi</h1>
                    <p class="hero-iniziale-content-text text-white">
                    BorderlesService è la soluzione perfetta per gestire i servizi dei tuoi dintorni.</p>
                   <p class="hero-iniziale-content-text text-white"> Ottimizza le tue operazioni, semplifica la pianificazione</p> 
                    <p class="hero-iniziale-content-text text-white"> e aumenta la produttività con il nostro gestionale intuitivo e potente</p>
                    
                    
                </div>
            </div>
        </section>


        <!-- Sponsor Section -->
        <section class="sponsor-section">
            <div class="line"></div>
            <div class="sponsor-section-container">
                <ul class="sponsor-section-list-section">
                    <li class="sponsor-section-list-item">
                      <img src="../images/doc.png" width="115px" height="115px">
                    </li>

                    <li class="sponsor-section-list-item">
                    <img src="../images/sweetlife.png" width="400px" height="65px">
                    </li>
                    <li class="sponsor-section-list-item">
                     <img src="../images/jaitamotors.png" width="250px" height="65px">
                    </li>
                </ul>
                
            </div>
        </section>


        <!-- Servizi popolari -->
        <section class="service_section" id="service_section">
            <div class="container">

                <div class="tv_section-container-primary">

                    <h2 class="tv-section__title fw-bold"><i class="fa-solid fa-star text-warning"></i> I più popolari<!-- Nome Regione--></h2>
                    <div class="tv_section__slider">
                        <button class="tv_section__button carousel-button prev" type="button">
   
                                <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: rgb(164, 187, 230);
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: white; padding-top: 6.8px;"></i></span>
                            
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
                                  <a href="/user/recuperoUtenti?id=${sp.id}" class="btn-carousel btn btn-secondary disabled aria-disabled="true" "><i class="fa-solid fa-eye"></i> Visita</a></a>
                              </article>
                          </li> 
                          
                          </#list>

                            </ul>

                        </div>
                        <button class="tv_section__button carousel-button next" type="button">
                            <span class="bottone-caroselliServizi" style="display:inline-block; border-radius:50%;box-shadow: 0px 0px 10px rgba(0,0,0,0.5); background-color: rgb(164, 187, 230);
                       width:30px; height:30px; text-align:center; line-height:20px;" ><i class="fa-solid fa-angle-left"
                        style="color: white; padding-top: 6.8px;"></i></span>
                        </button>
                    </div>
                </div>
            </div>
        </section>
        
        <!--about-->
        <#include "about.ftl">

        <!--contattaci-->
        <#include "contattaci.ftl">

    </main>

    <!--Footer-->


    <#include "footer.ftl">

   <!--end-->
   <#include "end.ftl">
