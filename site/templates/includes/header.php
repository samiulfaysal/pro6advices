<?php

namespace ProcessWire;

if(strpos($page->body, '<p>https://www.youtube.com') !== false) {
   $replacement = '<iframe width="640" height="360" src="https://www.youtube.com/embed/$1" frameborder="0" allowfullscreen></iframe>';
   $page->body = preg_replace('#<p>\s*https://www.youtube.com/watch\?v=([^\s&<]+).*?</p>#iu', $replacement, $page->body);
   }

// Template file for “base” template used by the homepage
// ------------------------------------------------------
// The #content div in this file will replace the #content div in _main.php
// when the Markup Regions feature is enabled, as it is by default. 
// You can also append to (or prepend to) the #content div, and much more. 
// See the Markup Regions documentation:
// https://processwire.com/docs/front-end/output/markup-regions/

?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>Pro6 Advies: experts in het starten van een eigen bedrijf</title>

   <meta name="description" content="Coaching en praktische begeleiding bij het opzetten van een eigen bedrijf. Expert in starten met UWV-uitkering. Opstellen ondernemingsplan." />
   <meta name="description" content="">
   <meta name="viewport" content="width=device-width, initial-scale=1">

   <!-- Place favicon.ico in the root directory -->
   <link rel="shortcut icon" type="image/x-icon" href="<?php echo $config->urls->templates; ?>assets/img/favicon.png">

   <!-- CSS here -->
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/animate.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/custom-animation.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/swiper-bundle.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/slick.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/nice-select.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/flaticon.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/meanmenu.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/font-awesome-pro.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/magnific-popup.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/spacing.css">
   <link rel="stylesheet" href="<?php echo $config->urls->templates; ?>assets/css/style.css?ver=1.0.1.10.8">
</head>

<body>

   <!-- preloader -->
   <div id="preloader">
      <div class="preloader">
         <span></span>
         <span></span>
      </div>
   </div>
   <!-- preloader end  -->

   <header>
      <!-- tp-header-area-start -->
      <div id="header-sticky" class="tp-header-area header-pl-pr header-transparent header-border-bottom">
         <div class="container-fluid">
            <div class="row g-0 align-items-center">
               <div class="col-xl-2 col-lg-2 col-md-4 col-6">
                  <div class="tp-logo tp-logo-border">
                     <a href="<?php echo $pages->get(1)->httpUrl; ?>">
                        <img src="<?php echo $config->urls->templates; ?>assets/img/logo/logox.png" alt="">
                     </a>
                  </div>
               </div>
               <div class="col-xl-10 col-lg-10 col-md-8 col-6 d-flex justify-content-start">
                  <div class="tp-main-menu d-none d-xl-block">
                     <nav id="mobile-menu">
                        <ul>
                           <li><a href="<?= $pages->get(1)->httpUrl; ?>">Home</a></li>
                           <?php
                           foreach ($pages->get("/")->children as $childs) { ?>
                              <li><a href='<?= $childs->url ?>'><?= $childs->title ?></a>
                                 <ul class="submenu">
                                    <?php foreach ($childs->children as $blogpost) { ?>
                                       <li><a href="<?php echo $blogpost->url; ?>"><?php echo $blogpost->title; ?></a></li>
                                    <?php } ?>
                                 </ul>
                              <?php } ?>
                              </li>
                              <?php
                              global $current_user;
                              $ss = $users->getCurrentUser();
                              $zxc = (array) $ss;
                              $mc = $ss->email;
                              //print_r($ss->email . "<br>");
                              //print_r($_SESSION['id']);
                              //echo "</pre>";
                              if (!empty($ss->email) || $_SESSION['id'] > 0) {
                                 $msg = " ";
                                 echo $msg;
                              } else {
                              ?>
                                 <li><a href="<?= $pages->get('/inloggen-registreren/')->httpUrl; ?>">Inloggen </a></li>

                              <?php } ?>

                        </ul>
                     </nav>
                  </div>
                  <div class="tp-header-right">
                     <ul>
                        <li><a class="tp-menu-bar" href="javascript:void(0)"><i class="fas fa-bars"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- tp-header-area-end -->
   </header>
   <!-- tp-offcanvus-area-start -->
   <div class="tp-offcanvas-area">
      <div class="tpoffcanvas">
         <div class="tpoffcanvas__close-btn">
            <button class="close-btn"><i class="fal fa-times"></i></button>
         </div>
         <div class="tpoffcanvas__logo pt-50">
            <a href="index.html">
               <img src="<?php echo $config->urls->templates; ?>assets/img/logo/logox-white.png" alt="">
            </a>
         </div>
         <div class="tpoffcanvas__text">
            <p>Suspendisse interdum consectetur libero id. Fermentum leo vel orci porta non. Euismod viverra nibh cras pulvinar suspen.</p>
         </div>
         <div class="mobile-menu"></div>
         <div class="tpoffcanvas__info">
            <h3 class="offcanva-title">Get In Touch</h3>
            <div class="tp-info-wrapper mb-20 d-flex align-items-center">
               <div class="tpoffcanvas__info-icon">
                  <a href="#"><i class="fal fa-envelope"></i></a>
               </div>
               <div class="tpoffcanvas__info-address">
                  <span>Email</span>
                  <a href="maito:info@pro6advies.nl">info@pro6advies.nl</a>
               </div>
            </div>
            <div class="tp-info-wrapper mb-20 d-flex align-items-center">
               <div class="tpoffcanvas__info-icon">
                  <a href="#"><i class="fal fa-phone-alt"></i></a>
               </div>
               <div class="tpoffcanvas__info-address">
                  <span>Phone</span>
                  <a href="tel:(00)45611227890">(00) 456 1122 7890</a>
               </div>
            </div>
            <div class="tp-info-wrapper mb-20 d-flex align-items-center">
               <div class="tpoffcanvas__info-icon">
                  <a href="#"><i class="fas fa-map-marker-alt"></i></a>
               </div>
               <div class="tpoffcanvas__info-address">
                  <span>Location</span>
                  <a href="https://www.google.com/maps/@37.4801311,22.8928877,3z" target="_blank">Riverside 255, San Francisco, USA </a>
               </div>
            </div>
         </div>
         <div class="tpoffcanvas__social">
            <div class="social-icon">
               <a href="#"><i class="fab fa-twitter"></i></a>
               <a href="#"><i class="fab fa-instagram"></i></a>
               <a href="#"><i class="fab fa-facebook-square"></i></a>
               <a href="#"><i class="fab fa-dribbble"></i></a>
            </div>
         </div>
      </div>
   </div>

   <div class="body-overlay"></div>
   <!-- tp-offcanvus-area-end -->