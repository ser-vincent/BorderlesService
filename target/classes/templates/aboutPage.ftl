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

<div class="about-container">

        <div class="about-container-content mr-5">
            <div class="about-content-texts text-dark">
                <h1 class="text-white fw-bold">A tua disposizione!</h1>
                
                <div class="come-vuoi pt-3 pb-3 text-start">
                <h4 class="text-white fw-bold"><i class="fa-solid fa-map"></i> Come vuoi, dove vuoi</h4>
                
                <p class="text-white">Il nostro sito nasce con l'idea di sradicare i confini geografici e consentire 
                <br>alle aziende e ai freelancer di comunicare direttamente fra di loro, 
                 <br>indipendentemente dalla loro posizione.</p>
                 </div>
                 
                 <div class="con-click pt3 pb-3"> 
                <h4 class="text-white fw-bold"><i class="fa-solid fa-computer-mouse"></i> Tutto con un click</h4>
                
                <p class="text-white">Grazie alla nostra piattaforma intuitiva e sicura, consentiamo ai nostri 
                <br>utenti di mettere a disposizione le loro competenze 
                <br>attraverso una lista di vari servizi. </p>
                 </div>

                <div class="per-tutti pt-3 pb-3">
                <h4 class="text-white fw-bold"><i class="fa-solid fa-people-group"></i> Costruito per tutti</h4>
                
                <p class="text-white">Che sia un'azienda, un freelancer, o un semplice acquirente,
                 <br> BorderlesService aiuterà chiunque a trovare il servizio che cerca.</p>
                </div>
               
               
            </div>
            
            <img class="about-image" src="../img-sfondo/1sfondovirtuale.png" alt="">

            <!-- style="max-width: 50%; max-height: 20%; padding-right: 10%;" -->
        </div>

    </div>
    
        <!--Footer-->
 <#include "footer.ftl">

<!--end-->
<#include "end.ftl">