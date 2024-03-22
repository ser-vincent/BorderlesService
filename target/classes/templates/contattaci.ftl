<section class="contact-section section mt-5 mb-5" id="contact-section">
        <div class="container">
            <div class="contact-section__container">
                <div class="contact-section__form text-dark mr-5">
                
                    <h2><i class="fa-solid fa-envelope"></i></h2>
                  <h2 class="contact-section__title section__title mr-4 fw-bold">Iscriviti alla newsletter</h2>
                    <p class="pb-3 mr-3">Non serve iscriversi al sito, compila semplicemente i campi quì sotto!</p>
                    <form action="/newsletter/register" method="POST" name="contact-form" autocomplete="off">
                    
                        <div class="contact-section__form-field input">
                        
                            <input class="input__control" type="text" id="user-name" name="user-name" placeholder="nome"
                                required>
                            <label class="input__lable visualy-hidden" for="user-name">Nome</label>
                        </div>

                        <div class="contact-section__form-field input">
                            <input class="input__control" type="tel" id="user-tel" class="user-tel" name = "user-tel" pattern="[0-9]{10}"
                                placeholder="telefono" value="" required>
                            <label class="input__lable visualy-hidden" for="user-tel">Telefono</label>
                        </div>
                        <div class="contact-section__form-field input">
                            <input class="input__control" type="email" id="user-email" class="user-email" name = "user-email"
                                placeholder="email" required>
                            <label class="input__lable visualy-hidden" for="user-email">Email</label>
                        </div>

                        <button class="contact-section__button button-primary" type="submit">Iscriviti alla
                            comunity</button>
                        <p class="form-terms">Premendo il tasto accetto la <a class="form-terms__link fw-bold" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Privacy
                                Policy</a>
                        </p>
                    </form>
                    
                </div>
                
                <iframe class="contact-section__map"
                    src="https://www.google.com/maps/embed?pb=!1m25!1m12!1m3!1d2791.958804164705!2d10.241033222300887!3d45.59137288445538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m10!3e6!4m3!3m2!1d45.5913689!2d10.243039699999999!4m4!2s45.59135%2C10.243048!3m2!1d45.59135!2d10.243048!5e0!3m2!1sit!2sit!4v1699362651512!5m2!1sit!2sit"
                    allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                </iframe>
                
            </div>

        </div>
    </section>