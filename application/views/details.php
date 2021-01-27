 
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Blog</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Blog</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container">

        <div class="row">

          <div class="col-lg-8 entries">

            <article class="entry entry-single" data-aos="fade-up">

              <?php 
                $imgurl = base_url($result['image']);
                $redurl = base_url("blog/details/".base64_encode($result['id']) );
                $tg = explode(",", $result['tags']);
               ?> 

              <div class="entry-img">
                <img alt="We unable to find image"  src="<?= $imgurl; ?>" alt="" class="img-fluid">
              </div>

              <h2 class="entry-title">
                <a href="javascript:void(0);"><?= $result['title']; ?></a>
              </h2>

              <div class="entry-meta">
                <ul>
                  <li class="d-flex align-items-center"><i class="icofont-user"></i> <a href="javascript:void(0);"><?=  $result['username']; ?></a></li>
                  <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="javascript:void(0);"><time datetime="<?=  $result['created']; ?>"><?= date('M d, Y',strtotime($result['created']) ); ?></time></a></li>
                  <li class="d-flex align-items-center"><i class="icofont-comment"></i> <a href="javascript:void(0);">12 Comments</a></li>
                </ul>
              </div>

              <div class="entry-content"> 
                <p>
                  <?= $result['description']; ?>
                </p>

              </div>

              <div class="entry-footer clearfix">
                <div class="float-left">
                  <!-- <i class="icofont-folder"></i>
                  <ul class="cats">
                    <li><a href="#">Business</a></li>
                  </ul> -->

                  <i class="icofont-tags"></i>
                  <ul class="tags">
                    <?php
                    if(!empty($tg)){
                        foreach ($tg as $rw) {
                            echo '<li><a href="javascript:void(0);">'.$rw.'</a></li> ';
                        }
                    }
                    ?> 
                  </ul>
                </div>

                <div class="float-right share">
                  <a href="" title="Share on Twitter"><i class="icofont-twitter"></i></a>
                  <a href="" title="Share on Facebook"><i class="icofont-facebook"></i></a>
                  <a href="" title="Share on Instagram"><i class="icofont-instagram"></i></a>
                </div>

              </div>

            </article><!-- End blog entry -->

            <!-- <div class="blog-author clearfix" data-aos="fade-up">
              <img alt="We unable to find image"  src="<?= base_url(); ?>assets/img/blog-author.jpg" class="rounded-circle float-left" alt="">
              <h4>Jane Smith</h4>
              <div class="social-links">
                <a href="https://twitters.com/#"><i class="icofont-twitter"></i></a>
                <a href="https://facebook.com/#"><i class="icofont-facebook"></i></a>
                <a href="https://instagram.com/#"><i class="icofont-instagram"></i></a>
              </div>
              <p>
                Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.
              </p>
            </div> --><!-- End blog author bio -->

            <div class="blog-comments" data-aos="fade-up">

              <h4 class="comments-count">1 Comments</h4>

              <?php 
              if(!empty($comm))
              {
                foreach ($comm as $ro1) 
                {
                ?> 
                  <div id="comment-1" class="comment clearfix">
                    <img alt="We unable to find image"  src="<?= base_url(); ?>uploads/images.png" class="comment-img  float-left" alt="">
                    <h5><a href="javascript:void(0)"><?= $ro1['name']; ?></a> <a href="#" class="reply"><i class="icofont-reply"></i> Reply</a></h5>
                    <time datetime="<?= $ro1['created']; ?>"><?= date("d M, Y",strtotime($ro1['created']) ); ?></time>
                    <p>
                      <?= $ro1['comment']; ?>
                    </p>
                  </div><!-- End comment #1 -->  
                <?php 
                }
              }
              ?>


              <div class="reply-form">
                <h4>Leave a Comment</h4>
                <p>Your email address will not be published. Required fields are marked * </p>
                <form action="" method="post" id="frm_post_comment">
                    <input type="hidden" name="blog_id" value="<?= $id; ?>">
                  <div class="row">
                    <div class="col-md-6 form-group">
                      <input name="name" type="text" class="form-control" placeholder="Your Name*">
                    </div>
                    <div class="col-md-6 form-group">
                      <input name="email" type="email" class="form-control" placeholder="Your Email*">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col form-group">
                      <input name="website" type="text" class="form-control" placeholder="Your Website">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col form-group">
                      <textarea name="comment" class="form-control" placeholder="Your Comment*"></textarea>
                    </div>
                  </div>
                    <div id="message_success"></div>
                  <button type="submit" class="btn btn-primary">Post Comment</button> 
                </form> 
              </div>

            </div><!-- End blog comments -->

          </div><!-- End blog entries list -->

          

          <div class="col-lg-4">

                <div class="sidebar" data-aos="fade-left">

                    <!-- <h3 class="sidebar-title">Search</h3>
                    <div class="sidebar-item search-form">
                        <form action="">
                            <input type="text">
                            <button type="submit"><i class="icofont-search"></i></button>
                        </form>
                    </div> --><!-- End sidebar search formn-->

                    <h3 class="sidebar-title">Categories</h3>
                    <div class="sidebar-item categories">
                        <ul> 
                            <?php
                            if(!empty($cat)){
                                foreach ($cat as $rw) 
                                {
                                    echo '<li><a href="javascript:void(0)">'.$rw['name'].' <span>('.$rw['bcnt'].')</span></a></li> ';
                                }
                            }
                            ?>
                        </ul>

                    </div><!-- End sidebar categories-->

                    <h3 class="sidebar-title">Recent Posts</h3>
                    <div class="sidebar-item recent-posts">
                          
                        <?php
                        if(!empty($rec_bg)){
                            foreach ($rec_bg as $rw2) 
                            {
                                $imgurl = base_url($rw2['image']);
                                $redurl = base_url("blog/details/".base64_encode($rw2['id']) );
                                echo '<div class="post-item clearfix">
                                        <img alt="We unable to find image"  src="'.$imgurl.'" alt="">
                                        <h4><a href="'.$redurl.'">Nihil blanditiis at in nihil autem</a></h4>
                                        <time datetime="'.$rw2['created'].'">'.date('M d, Y',strtotime($rw2['created']) ).'</time>
                                    </div> ';
                            }
                        }
                        ?>

                    </div><!-- End sidebar recent posts-->

                    <h3 class="sidebar-title">Tags</h3>
                    <div class="sidebar-item tags">
                        <ul> 
                            <?php
                            if(!empty($tag)){
                                foreach ($tag as $rw3) 
                                { 
                                    echo '<li><a href="javascript:void(0)">'.$rw3.'</a></li>';
                                }
                            }
                            ?>
                        </ul>

                    </div><!-- End sidebar tags-->

                </div><!-- End sidebar -->

            </div><!-- End blog sidebar -->

            

        </div>

      </div>
    </section><!-- End Blog Section -->


  </main><!-- End #main -->
   


   <script type="text/javascript">
       

    $('#frm_post_comment').validate({ 
        onkeyup: function(element){this.element(element);},
        rules:{ 
          name:{  required:true, },
          email:{  required:true, }, 
          comment:{  required:true, },
        },  
        submitHandler: function(form) {
        frmdata = new FormData($('#frm_post_comment')[0]); 
        $.ajax({
        url : "<?php echo base_url('blog/add_comments')?>",
        data:frmdata, 
        type: "POST",        
        dataType: "JSON",
        processData:false,
        contentType:false,
        cache:false,
        async:false,
        success: function(response) 
        {  

            if(response.status=='error')
            {
                $('#message_success').html('<div class="alert alert-icon-left alert-danger alert-dismissible mb-2" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> '+ response.message+'</div>');
            } 
            else if(response.status=='success')
            {
                $('#message_success').html('<div class="alert alert-icon-left alert-success alert-dismissible mb-2" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>'+response.message+'</div>');
    
            } 
                $('#frm_post_comment')[0].reset();    
    
         } 
      });
    } 
    }); 


   </script>