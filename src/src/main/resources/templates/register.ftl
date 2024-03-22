<button type="button" class="btn btn-primary btn-register" data-bs-toggle="modal"
                            data-bs-target="#registerdemo"><i class="fa-solid fa-signature"></i> Registrati</button>

<div id="registerdemo" class="modal fade">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body">         
                <div class="myform bg-white">
                    <h3 class="login-text text-center">Crea il tuo account</h3>
                    <p class="pdescr">Inserisci i tuoi dati per unirti alla nostra community</p>
                    <form action="/user/register" method = "POST">
                        <div class="mb-3 mt-3">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" name="nome"> 
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="cognome">Cognome</label>
                            <input type="text" class="form-control" name="cognome"> 
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email"> 
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password"> 
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="telefono">Telefono</label>
                            <input type="tel" class="form-control" name="telefono" pattern="[0-9]{10}"> 
                        </div>
                        <label for="tipoAcc">Tipo account</label>
                        <select class="form-select mb-3 mt-3" name="tipoAcc">
                           <option value="none">---</option>
                           <option value="BUSINESS">Business</option>
                           <option value="PRIVATO">Privato</option>
                        </select>
                        <button type="submit" class="buttonlogin btn btn-primary mt-3 text-white">Registrati</button>
                        <p class="notmember">Hai già un account? <span class="text-dark" type="button" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#logindemo">Accedi!</span></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
 </div>