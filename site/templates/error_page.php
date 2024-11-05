<?php include("includes/header.php"); ?>

   <main>

      <!-- breadcrumb area start -->
      <section class="tp-404-area height-404" data-background="<?php echo $config->urls->templates; ?>assets/img/404/404.jpg">
         <div class="container">
            <div class="row">
               <div class="col-xl-12">
                  <div class="wrapper-404 d-flex justify-content-center align-items-end">
                     <div class="tp-404-content text-center pb-60">
                        <h4 class="mb-40">Opps! Page Not Found</h4>
                        <a class="tp-btn" href="<?= $pages->get(1)->httpUrl; ?>">Back To Home</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- breadcrumb area end -->
   </main>

   <?php include("includes/footer.php"); ?>