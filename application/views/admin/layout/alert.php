<?php
  if($this->session->flashdata("success")!= ""){
      echo '<div class="alert alert-success  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'.$this->session->flashdata("success").'</div>';
  }
  if($this->session->flashdata("error")!= ""){
      echo '<div class="alert alert-danger  alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'.$this->session->flashdata("error").'</div>';
  }
  ?>