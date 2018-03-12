<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/page/themes/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <router-link to="#"><i class="fa fa-circle text-success"></i> Online</router-link>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li>
              <router-link to="/admin/dashboard1" >
                <i class="fa fa-circle-o"></i> Dashboard v1
              </router-link>
            </li>
            <li><router-link to="/admin/dashboard2"><i class="fa fa-circle-o"></i> Dashboard v2</router-link></li>
          </ul>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-files-o"></i>
            <span>Layout Options</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to = "/admin/topnavigation"><i class= "fa fa-circle-o"></i> Top Navigation</router-link></li>
            <li><router-link to = "/admin/boxed"><i class= "fa fa-circle-o"></i> Boxed</router-link></li>
            <li><router-link to = "/admin/fixed"><i class= "fa fa-circle-o"></i> Fixed</router-link></li>
            <li><router-link to = "/admin/Collapsedsidebar"><i class="fa fa-circle-o"></i> Collapsed Sidebar</router-link></li>
          </ul>
        </li>
        <li>
          <router-link to="/admin/widget">
            <i class="fa fa-th"></i> <span>Widgets</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">Hot</small>
            </span>
          </router-link>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-pie-chart"></i>
            <span>Charts</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="/admin/charts/chartjs"><i class="fa fa-circle-o"></i> ChartJS</router-link></li>
            <li><router-link to="/admin/charts/morris"><i class="fa fa-circle-o"></i> Morris</router-link></li>
            <li><router-link to="/admin/charts/flot"><i class="fa fa-circle-o"></i> Flot</router-link></li>
            <li><router-link to="/admin/charts/inline"><i class="fa fa-circle-o"></i> Inline charts</router-link></li>
          </ul>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-laptop"></i>
            <span>UI Elements</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="/admin/ui/general"><i class="fa fa-circle-o"></i> General</router-link></li>
            <li><router-link to="/admin/ui/icons"><i class="fa fa-circle-o"></i> Icons</router-link></li>
            <li><router-link to="/admin/ui/buttons"><i class="fa fa-circle-o"></i> Buttons</router-link></li>
            <li><router-link to="/admin/ui/sliders"><i class="fa fa-circle-o"></i> Sliders</router-link></li>
            <li><router-link to="/admin/ui/timeline"><i class="fa fa-circle-o"></i> Timeline</router-link></li>
            <li><router-link to="/admin/ui/modals"><i class="fa fa-circle-o"></i> Modals</router-link></li>
          </ul>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-edit"></i> <span>Forms</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="/admin/forms/general"><i class="fa fa-circle-o"></i> General Elements</router-link></li>
            <li><router-link to="/admin/forms/advanced"><i class="fa fa-circle-o"></i> Advanced Elements</router-link></li>
            <li><router-link to="/admin/forms/editors"><i class="fa fa-circle-o"></i> Editors</router-link></li>
          </ul>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-table"></i> <span>Tables</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="/admin/tables/simple"><i class="fa fa-circle-o"></i> Simple tables</router-link></li>
            <li><router-link to="/admin/tables/data"><i class="fa fa-circle-o"></i> Data tables</router-link></li>
          </ul>
        </li>
        <li>
          <router-link to="/admin/calendar">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </router-link>
        </li>
        <li>
          <router-link to="/admin/mailboxmailbox/mailbox">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </router-link>
        </li>
        <li class="treeview active">
          <router-link to="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="/admin/example/invoice"><i class="fa fa-circle-o"></i> Invoice</router-link></li>
            <li><router-link to="/admin/example/profile"><i class="fa fa-circle-o"></i> Profile</router-link></li>
            <li><router-link to="/admin/example/login"><i class="fa fa-circle-o"></i> Login</router-link></li>
            <li><router-link to="/admin/example/register"><i class="fa fa-circle-o"></i> Register</router-link></li>
            <li><router-link to="/admin/example/lockscreen"><i class="fa fa-circle-o"></i> Lockscreen</router-link></li>
            <li><router-link to="/admin/example/p404"><i class="fa fa-circle-o"></i> 404 Error</router-link></li>
            <li><router-link to="/admin/example/p500"><i class="fa fa-circle-o"></i> 500 Error</router-link></li>
            <li class="active"><router-link to="/admin/blank"><i class="fa fa-circle-o"></i> Blank Page</router-link></li>
            <li><router-link to="pace.html"><i class="fa fa-circle-o"></i> Pace Page</router-link></li>
          </ul>
        </li>
        <li class="treeview">
          <router-link to="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </router-link>
          <ul class="treeview-menu">
            <li><router-link to="#"><i class="fa fa-circle-o"></i> Level One</router-link></li>
            <li class="treeview">
              <router-link to="#"><i class="fa fa-circle-o"></i> Level One
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </router-link>
              <ul class="treeview-menu">
                <li><router-link to="#"><i class="fa fa-circle-o"></i> Level Two</router-link></li>
                <li class="treeview">
                  <router-link to="#"><i class="fa fa-circle-o"></i> Level Two
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </router-link>
                  <ul class="treeview-menu">
                    <li><router-link to="#"><i class="fa fa-circle-o"></i> Level Three</router-link></li>
                    <li><router-link to="#"><i class="fa fa-circle-o"></i> Level Three</router-link></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><router-link to="#"><i class="fa fa-circle-o"></i> Level One</router-link></li>
          </ul>
        </li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><router-link to="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></router-link></li>
        <li><router-link to="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></router-link></li>
        <li><router-link to="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></router-link></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
