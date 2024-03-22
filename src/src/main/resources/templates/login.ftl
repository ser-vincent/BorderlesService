<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                            data-bs-target="#logindemo"><i class="fa-solid fa-right-to-bracket"></i> Login</button>


                        <div id="logindemo" class="modal fade">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="myform bg-white">
                                            <h3 class="login-text text-center">Accedi al tuo account</h3>
                                            <p class="pdescr">Inserisci i tuoi dati per accedere</p>
                                            <form id="loginForm" action="/user/login" method="POST">
                                                <div class="mb-3 mt-3">
                                                    <label for="email">Email</label>
                                                    <input type="email" id="email" class="form-control" name="email">
                                                </div>
                                                <div class="mb-3 mt-3">
                                                    <label for="password">Password</label>
                                                    <input type="password" id="password" class="form-control" name="password">
                                                </div>
                                                
                                                <button type="submit"
                                                    class="buttonlogin btn btn-primary mt-3 text-white">Accedi</button>
                                                <p class="notmember">Non hai un account? <span class="text-dark" type="button" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#registerdemo">Iscriviti!</span></p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>