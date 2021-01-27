  $(function () { 

    $('#from-add').validate();

    $('#form-role').validate({
    	errorPlacement: function(error, element) 
           { 
              var name = $(element).attr("name");
              
              if (name === "access[]") 
              {
                error.insertAfter('.err_access');
              } 
              else
              {
                error.insertAfter(element);
              }
            
           }
    });

    $('.select2bs4').select2({
      theme: 'bootstrap4'
    });

    $('#form-tutorial').validate({
      errorPlacement: function(error, element) 
           { 
              var name = $(element).attr("name");
              
              if (name === "tags[]") 
              {
                error.insertAfter('.err_tags');
              } 
              else
              {
                error.insertAfter(element);
              }
            
           }
    });

  }); 



$(document).ready(function() { 

    $('#form-tutorial').on('submit', function(e) {
      $('#error_description').html("");
      if($('.tutorial-editor').summernote('isEmpty')) {
        $('#error_description').html("Please enter tutorial description")

        // cancel submit
        e.preventDefault();
      }
    
  })

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.profile-pic').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
    
    $(".upload-button").on('click', function() {
       $(".file-upload").click();
    });
});
/*DK profile end*/
$(function () {
  // Summernote
  $('.textarea-editor').summernote();

  $('.tutorial-editor').summernote({
    height: 200
  });


})
  


