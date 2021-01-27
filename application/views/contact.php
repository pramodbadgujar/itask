 
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="<?= base_url(); ?>">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <!-- <div class="map-section">
      <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" allowfullscreen></iframe>
    </div> -->

    <section id="contact" class="contact">
      <div class="container">

        <div class="row justify-content-center" data-aos="fade-up">

          <div class="col-lg-10">

            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-4 info">
                  <i class="icofont-google-map"></i>
                  <h4>Location:</h4>
                  <p>12, Ganga Gomati Row House<br>Bhadrapad Sector, <br>Cidco Nashik 422009</p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="icofont-envelope"></i>
                  <h4>Email:</h4>
                  <p><?php echo CONTACT_EMAIL; ?><br></p>
                  <p>pramod@oreansoft.in<br></p>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  <i class="icofont-phone"></i>
                  <h4>Call:</h4>
                  <p><?php echo CONTACT_NUMBER; ?><br></p>
                </div>
              </div>
            </div>

          </div>

        </div>

        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10 php-email-form">
            <form  method="post" role="form" class="" id="form_add">
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
                </div>
                <div class="col-md-6 form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="required" data-msg="Please enter at least 8 chars of subject" />
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" id="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="sent-message" id="success_message"></div>
                <!-- <div class="loading">Loading</div> -->
                <!-- <div class="error-message"></div> -->
                <!-- <div class="sent-message">Your message has been sent. Thank you!</div> -->
              </div>
              <div class="text-center">
                <button class="buttonload" type="submit"><i class="fa fa-refresh fa-spin" style="display: none" id="relod"></i>Send Message</button> 
              </div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->


  </main><!-- End #main -->



  <script type="text/javascript">
     

    $(function(){
      $('#form_add').validate({ 
          onkeyup: function(element){this.element(element);},
          rules:{ 
            name:{  required:true },  
            email:{  required:true,email:true },  
            message:{  required:true },  
          },
          submitHandler: function(form) { 
              $.ajax({
                url : "contact/sendemail", 
                data:new FormData($("#form_add")[0]),
                type: "POST",        
                dataType: "JSON",
                processData:false,
                contentType:false,
                cache:false,
                async:false,
                beforeSend:function(){
                  $("#relod").removeAttr("style");
                },
                success: function(response) 
                { 
                  // alert(response);
                  if(response.status == "success"){ 
                    $("#success_message").html("Your message has been sent. Thank you!").css("display","block");
                  }else{
                    $("#success_message").html("Please try again!").css("display","block");
                  }
                  $("#relod").css("display","none");
                } 
            });
          } 
      });  

    });

  </script>
  
  
   <style>
.buttonload {
  background-color: #4CAF50; /* Green background */
  border: none; /* Remove borders */
  color: white; /* White text */
  padding: 12px 24px; /* Some padding */
  font-size: 16px; /* Set a font-size */
}

/* Add a right margin to each icon */
.fa {
  margin-left: -12px;
  margin-right: 8px;
}
</style>