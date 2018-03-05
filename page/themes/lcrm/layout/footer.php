  <?php 
    $footer = App::where('popkey','Company')->first();
    $company = $footer ? $footer->pop_value  : 'Company';
  ?>
  <footer class="main-footer noprint">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
<<<<<<< HEAD
    <strong>Copyright &copy; 2016 <a href="#"><?=$company?></a>.</strong> All rights reserved.
=======
    <!-- <strong>Copyright &copy; 2016 <a href="#"><?=$company?></a>.</strong> All rights reserved. -->
>>>>>>> d457d76cc15955b1cf02442ede6ce246fbe5e449
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-114317649-1"></script> -->
    <!-- <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-114317649-1');
    </script> -->
  </footer>