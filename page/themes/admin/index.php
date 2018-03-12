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
<script src="/page/themes/admin/bower_components/jquery-ui/jquery-ui.min.js"></script>
<script src="/page/themes/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/page/themes/admin/bower_components/chart.js/Chart.js"></script>
<script src="/page/themes/admin/bower_components/raphael/raphael.min.js"></script>
<script src="/page/themes/admin/bower_components/morris.js/morris.min.js"></script>
<script src="/page/themes/admin/bower_components/Flot/jquery.flot.js"></script>
<script src="/page/themes/admin/bower_components/Flot/jquery.flot.resize.js"></script>
<script src="/page/themes/admin/bower_components/Flot/jquery.flot.pie.js"></script>
<script src="/page/themes/admin/bower_components/Flot/jquery.flot.categories.js"></script>
<script src="/page/themes/admin/bower_components/jquery-knob/js/jquery.knob.js"></script>
<script src="/page/themes/admin/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<script src="/page/themes/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="/page/themes/admin/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script src="/page/themes/admin/bower_components/fastclick/lib/fastclick.js"></script>
<script src="/page/themes/admin/dist/js/adminlte.min.js"></script>
<script src="/page/themes/admin/dist/js/demo.js"></script>
<script src="/page/themes/admin/bower_components/moment/moment.js"></script>
<script src="/page/themes/admin/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $(".sidebar-menu").tree();
    });
     $(function () {
        function init_events(ele) {
            ele.each(function() {
                var eventObject = { title: $.trim($(this).text()) }; // use the element's text as the event title
                $(this).data("eventObject", eventObject);
                $(this).draggable({
                    zIndex: 1070,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0 //  original position after the drag
                });
            });
        }

        init_events($("#external-events div.external-event"));
        var date = new Date();
        var d = date.getDate(),
            m = date.getMonth(),
            y = date.getFullYear();
        $("#calendar").fullCalendar({
            header: {
                left: "prev,next today",
                center: "title",
                right: "month,agendaWeek,agendaDay"
            },
            buttonText: {
                today: "today",
                month: "month",
                week: "week",
                day: "day"
            },
            events: [{
                    title: "All Day Event",
                    start: new Date(y, m, 1),
                    backgroundColor: "#f56954", //red
                    borderColor: "#f56954" //red
                },
                {
                    title: "Long Event",
                    start: new Date(y, m, d - 5),
                    end: new Date(y, m, d - 2),
                    backgroundColor: "#f39c12", //yellow
                    borderColor: "#f39c12" //yellow
                },
                {
                    title: "Meeting",
                    start: new Date(y, m, d, 10, 30),
                    allDay: false,
                    backgroundColor: "#0073b7", //Blue
                    borderColor: "#0073b7" //Blue
                },
                {
                    title: "Lunch",
                    start: new Date(y, m, d, 12, 0),
                    end: new Date(y, m, d, 14, 0),
                    allDay: false,
                    backgroundColor: "#00c0ef", //Info (aqua)
                    borderColor: "#00c0ef" //Info (aqua)
                },
                {
                    title: "Birthday Party",
                    start: new Date(y, m, d + 1, 19, 0),
                    end: new Date(y, m, d + 1, 22, 30),
                    allDay: false,
                    backgroundColor: "#00a65a", //Success (green)
                    borderColor: "#00a65a" //Success (green)
                },
                {
                    title: "Click for Google",
                    start: new Date(y, m, 28),
                    end: new Date(y, m, 29),
                    url: "http://google.com/",
                    backgroundColor: "#3c8dbc", //Primary (light-blue)
                    borderColor: "#3c8dbc" //Primary (light-blue)
                }
            ],
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function(date, allDay) {
                // this function is called when something is dropped
                var originalEventObject = $(this).data("eventObject");
                var copiedEventObject = $.extend({}, originalEventObject);
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                copiedEventObject.backgroundColor = $(this).css("background-color");
                copiedEventObject.borderColor = $(this).css("border-color");
                $("#calendar").fullCalendar("renderEvent", copiedEventObject, true);
                if ($("#drop-remove").is(":checked")) {
                    $(this).remove();
                }
            }
        });
        var currColor = "#3c8dbc"; //Red by default
        var colorChooser = $("#color-chooser-btn");
        $("#color-chooser > li > a").click(function(e) {
            e.preventDefault();
            currColor = $(this).css("color");
            $("#add-new-event").css({
                "background-color": currColor,
                "border-color": currColor
            });
        });
        $("#add-new-event").click(function(e) {
            e.preventDefault();
            var val = $("#new-event").val();
            if (val.length == 0) {
                return;
            }
            var event = $("<div />");
            event
                .css({
                    "background-color": currColor,
                    "border-color": currColor,
                    color: "#fff"
                })
                .addClass("external-event");
            event.html(val);
            $("#external-events").prepend(event);
            init_events(event);
            $("#new-event").val("");
        });
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
