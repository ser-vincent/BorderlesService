<!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container text-center mx-auto w-75">
         
           <a class="navbar-brand" href="/user/ritornaHome">
           
              <img src="../images/concept-logo2.png" width="230" height="30" class="d-inline-block align-top" alt="Logo">
          </a>

          <div class="input-group rounded" style="width: 30%; margin-left:2%;">
            <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
            <span class="input-group-text border-0" id="search-addon">
              <i class="fas fa-search"></i>
            </span>
          </div>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>
        
          <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav  ">
              <li class="nav-item active">
                <a class="nav-link" href="/user/ritornaHome">Home<span class="sr-only">(current)</span></a>
                <li class="nav-item active">
                <a class="nav-link" href="/services/gestoreServizi">Gestore Servizi<span class="sr-only">(current)</span></a>
              </li>
             
              <li class="nav-item" >

                <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle btn-dropStyle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="transform: translateY(2px);" >
                    Ciao ${utente.getNome()}
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="/services/paginaAggiungiServizio"><i class="fa-solid fa-square-plus"></i> Aggiungi servizio</a></li>
                    <li><a class="dropdown-item" href="/user/reportistica"><i class="fa-solid fa-chart-line"></i> Reportistica</a></li>
                    <li><a class="dropdown-item" href="/user/logout"><i class="fa-solid fa-door-open"></i> Logout</a></li>
                  </ul>
                </div>
              </li>

            </ul>
          
        </nav>
      </div>
    </header>