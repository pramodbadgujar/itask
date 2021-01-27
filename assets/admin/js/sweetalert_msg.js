function confirm_action(ref,evt,msg)
{
   var msg = msg || false;
  
    evt.preventDefault();  
    swal({
          title: "Are you sure?",
          text: msg,
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#DD6B55",
          confirmButtonText: "Yes",
          cancelButtonText: "No",
          closeOnConfirm: false,
          closeOnCancel: true
        },
        function(isConfirm)
        {
          if(isConfirm==true)
          {
            // swal("Performed!", "Your Action has been performed on that file.", "success");
            window.location = $(ref).attr('href');
          }
        });
}    








