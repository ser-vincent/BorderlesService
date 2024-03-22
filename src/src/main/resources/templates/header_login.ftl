<header class="header_section">
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="/home">

                <img class="mb-1" src="../images/concept-logo2.png" width="240" height="30" class="d-inline-block align-top" alt="Logo">
            </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               
                <ul class="navbar-nav  ">
                    <li class="nav-item active">
                        <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/teamNoLog">Il nostro Team</a>
                    </li>
                    <li class="nav-item">
              

                        <!--Login-->
                        <#include "login.ftl">

                        <!--register-->
                        <#include "register.ftl">

                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>