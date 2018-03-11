<div class="wrapper" id="app" v-cloak>
  <?php require_once __DIR__.'/layout/mainheader.php'; ?>
  <?php require_once __DIR__.'/layout/mainsidebar.php'; ?>
  <div class="content-wrapper">
  <router-view>routerview</router-view>
  </div>
  <?php  require_once __DIR__.'/layout/mainfooter.php'; ?>
  <?php  require_once __DIR__.'/layout/controlsidebar.php'; ?>
  <?php  require_once __DIR__.'/layout/controlsidebarbg.php'; ?>  
</div>
<script src="/page/themes/admin/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/page/themes/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/page/themes/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/page/themes/admin/bower_components/fastclick/lib/fastclick.js"></script>
<script src="/page/themes/admin/dist/js/adminlte.min.js"></script>
<script src="/page/themes/admin/dist/js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $(".sidebar-menu").tree();
    });
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/6.26.0/polyfill.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/vue@2.5.13/dist/vue.js"></script>
<script type="text/javascript" src="https://unpkg.com/vue-router@3.0.1/dist/vue-router.js"></script>
<script type="text/javascript" src="https://unpkg.com/vuex"></script>
<script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/vuejs-paginate@latest"></script>
<script type="text/javascript" src="https://unpkg.com/vee-validate@2.0.0/dist/vee-validate.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/element-ui"></script>
<script type="text/javascript" src="https://unpkg.com/element-ui/lib/umd/locale/th.js"></script>
<script type="text/javascript" src="https://unpkg.com/vue-ls@2.3.3/dist/vue-ls.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/moment@2.20.1/moment.js"></script>
<script type="module" src="/page/themes/admin/app.js"></script>
