   <main>

      <!-- breadcrumb area start -->
      <section class="breadcrumb__area breadcrumb-height include-bg p-relative"
         data-background="<?php echo $config->urls->templates; ?>assets/img/breadcrumb/breadcurmb.jpg">
         <div class="container">
            <div class="row">
               <div class="col-xxl-12">
                  <div class="breadcrumb__content">
                     <h3 class="breadcrumb__title wow tpfadeUp" data-wow-duration=".7s" data-wow-delay=".5s"><?php echo $page->title; // headline ?></h3>
                     <div class="breadcrumb__list wow tpfadeUp" data-wow-duration=".9s">
                        <?php if($page->parents->count()): // breadcrumbs ?>
                        <?php echo $page->parents->implode(" <span class='dvdr'><i class='fa fa-angle-right'></i></span> ", "<span><a href='{url}'>{title}</a></span>"); ?>
                        <?php endif; ?>
                        <span class='dvdr'><i class='fa fa-angle-right'></i></span>
                        <span><?php echo $page->title; // headline ?></span>
                     </div>
                     <h2 style="margin:10px 0px 0px 6px;" >
                     <?php
                        if (!isset($_SESSION['wlc'])) {
                           echo " ";
                        } elseif (isset($_SESSION['wlc'])) {
                           echo $_SESSION['wlc'];
                        }
                     ?>
                     </h2>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- breadcrumb area end -->