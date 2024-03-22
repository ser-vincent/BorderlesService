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
    
<div class="container mt-3">
<div class="principale">
    <div class="tabelle-statistiche">

        <div class="tabella-statistiche">
            <caption>
                <h2 style="color: black;">Servizi con più offerte</h2>
            </caption>
            <table class="table-statistiche">

                <thead class="thead-statistiche">
                    <tr class="tr-statistiche">
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">#</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">Nome</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" colspan="5px" scope="col">N° richieste</th>

                    </tr>
                </thead>
                <#assign cont=1>

                    <#list mappa as chiave, valore>
                        <tbody class="tbody-statistiche">
                            <tr class="tr-statistiche">
                                <th scope="row">${cont}</th>
                                <td class="td-statistiche">${chiave}</td>
                                <td class="td-statistiche">${valore}</td>
                            </tr>
                        </tbody>
<#assign cont=cont +1>
    <#if cont==11>
        <#break>
            <#else>
    </#if>
    </#list>
            </table>
        </div>

        <div class="tabella-statistiche">
            <caption>
                <h2 style="color: black;">Servizi più apprezzati</h2>
            </caption>
            <table class="table-statistiche">

                <thead class="thead-statistiche">
                    <tr class="tr-statistiche">
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">#</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">Nome</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" colspan="5px" scope="col">N° Offerte</th>

                    </tr>
                </thead>
                <#assign cont2=1>
                
                    <#list mappaServiziOffertiOrd as chiave, valore>

                <tbody class="tbody-statistiche">
                    <tr class="tr-statistiche">
                        <th class="th-statistiche" scope="row">${cont2}</th>
                        <td class="td-statistiche">${chiave}</td>
                        <td class="td-statistiche">${valore}</td>
                    </tr>
                </tbody>
                <#assign cont2=cont2 +1>
                    <#if cont2==11>
                        <#break>
                            <#else>
                    </#if>
                    </#list>

            </table>
        </div>

    </div>


    <div class="tabelle-statistiche">

        <div class="tabella-statistiche">
            <caption>
                <h2 style="color: black;">Utenti con più servizi</h2>
            </caption>
            <table class="table-statistiche">
                
                <thead class="thead-statistiche">
                    <tr class="tr-statistiche">
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">#</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">Nome</th>
                        <th class="th-statistiche" style="background-color: cornflowerblue;" colspan="5px" scope="col">N° servizi</th>

                    </tr>
                </thead>
<#assign cont3=1>

    <#list mappaUrichiesteOrdinataSession as chiave, valore>

                <tbody class="tbody-statistiche"> 
                    <tr class="tr-statistiche">
                        <th class="th-statistiche" scope="row">${cont3}</th>
                        <td class="td-statistiche">${chiave}</td>
                        <td class="td-statistiche">${valore}</td>
                    </tr>
                </tbody>
                 

                <#assign cont3=cont3 +1>
                    <#if cont3==11>
                        <#break>
                            <#else>
                    </#if>
                    </#list>
                    </table>
                   </div>
                   

                <div class="tabella-statistiche">
                    <caption>
                        <h2 style="color: black;">Utenti con più richieste</h2>
                    </caption>
                    <table class="table-statistiche">

                        <thead class="thead-statistiche">
                            <tr class="tr-statistiche">
                                <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">#</th>
                                <th class="th-statistiche" style="background-color: cornflowerblue;" scope="col">Nome</th>
                                <th class="th-statistiche" style="background-color: cornflowerblue;" colspan="5px" scope="col">N° richieste</th>
                            </tr>
                        </thead>

                        <#assign cont4=1>
                        
                            <#list mappaUoffronoOrdinataSession as chiave, valore>

                        <tbody class="tbody-statistiche">
                            <tr class="tr-statistiche">
                                <th class="th-statistiche" scope="row">${cont4}</th>
                                <td class="td-statistiche">${chiave}</td>
                                <td class="td-statistiche">${valore}</td>
                            </tr>
                        </tbody>

                        <#assign cont4=cont4 +1>
                            <#if cont4==11>
                                <#break>
                                    <#else>
                            </#if>
                            </#list>

                    </table>

                </div>
          
        </div>

    </div>
</div>
</div>

    
        <!--Footer-->
 <#include "footer.ftl">

<!--end-->
<#include "end.ftl">