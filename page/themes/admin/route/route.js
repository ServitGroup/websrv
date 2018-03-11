import Bank from "../pages/Bank.js";
import Login from "../pages/Login.js";
import Profile from "../pages/profile.js";
import Dashboard1 from "../pages/dashboard.js";
import Dashboard2 from "../pages/dashboard2.js";
import Topnavigation from "../pages/Bank.js";
import Boxed from "../pages/Bank.js";
import Fixed from "../pages/Bank.js";
import Collapsedsidebar from "../pages/Bank.js";
import Widget from "../pages/widgets.js";
import Chartjs from "../pages/charts/chartjs.js";
import Morris from "../pages/charts/morris.js";
import Flot from "../pages/charts/flot.js";
import Inline from "../pages/charts/inline.js";

import General from "../pages/UI/general.js";
import Icons from "../pages/UI/icons.js";
import Buttons from "../pages/UI/buttons.js";
import Sliders from "../pages/UI/sliders.js";
import Timeline from "../pages/UI/timeline.js";
import Modals from "../pages/UI/modals.js";

import Advanced from "../pages/Bank.js";
import Editors from "../pages/Bank.js";

import Simple from "../pages/tables/simple.js";
import Data from "../pages/tables/data.js";

import Calendar from "../pages/calendar.js";
import Mailbox from "../pages/Bank.js";
import Invoice from "../pages/examples/invoice.js";
import Invoiceprn from "../pages/examples/invoice-print.js";
import Register from "../pages/Bank.js";
import Lockscreen from "../pages/Bank.js";
import P404 from "../pages/Bank.js";
import P500 from "../pages/Bank.js";
import Blank from "../pages/Bank.js";
import Html from "../pages/Bank.js";
import User from "../pages/Bank.js";

const NotFoundComponent = {
    template: "<div>Not found</div>"
};

const routes = [{
        path: "/admin",
        component: Bank
    },
    {
        path: "/admin/user",
        component: User
    },
    {
        path: "/admin/login",
        component: Login
    },
    {
        path: "/admin/profile",
        component: Profile
    },
    {
        path: "*",
        component: Bank
    },
    { path: "/admin/forms/general", component: General },
    { path: "/admin/login", component: Login },
    { path: "/admin/dashboard1", component: Dashboard1 },
    { path: "/admin/dashboard2", component: Dashboard2 },
    { path: "/admin/topnavigation", component: Topnavigation },
    { path: "/admin/boxed", component: Boxed },
    { path: "/admin/fixed", component: Fixed },
    { path: "/admin/Collapsedsidebar", component: Collapsedsidebar },
    { path: "/admin/widget", component: Widget },
    { path: "/admin/charts/chartjs", component: Chartjs },
    { path: "/admin/charts/morris", component: Morris },
    { path: "/admin/charts/flot", component: Flot },
    { path: "/admin/charts/inline", component: Inline },

    { path: "/admin/ui/general", component: General },
    { path: "/admin/ui/icons", component: Icons },
    { path: "/admin/ui/buttons", component: Buttons },
    { path: "/admin/ui/sliders", component: Sliders },
    { path: "/admin/ui/timeline", component: Timeline },
    { path: "/admin/ui/modals", component: Modals },

    { path: "/admin/forms/general", component: General },
    { path: "/admin/forms/advanced", component: Advanced },
    { path: "/admin/forms/editors", component: Editors },

    { path: "/admin/tables/simple", component: Simple },
    { path: "/admin/tables/data", component: Data },

    { path: "/admin/calendar", component: Calendar },
    { path: "/admin/mailboxmailbox/mailbox", component: Mailbox },
    { path: "/admin/example/invoice", component: Invoice },
    { path: "/admin/example/invoiceprn", component: Invoiceprn },
    { path: "/admin/example/profile", component: Profile },
    { path: "/admin/example/login", component: Login },
    { path: "/admin/example/register", component: Register },
    { path: "/admin/example/lockscreen", component: Lockscreen },
    { path: "/admin/example/p404", component: P404 },
    { path: "/admin/example/p500", component: P500 },
    { path: "/admin/blank", component: Blank },
    { path: "/admin/forms/pace.html", component: Html },
    { path: "/admin/forms/general", component: General },
    { path: "/admin/login", component: Login },
    { path: "/admin/user", component: User },
    { path: "/admin/profile", component: Profile }
];

// routes.push({ path: "/*", component: Bank });
export const router = new VueRouter({
    mode: "history",
    routes: routes,
    scrollBehavior: function(to, from, savedPosition) {
        return (
            savedPosition || {
                x: 0,
                y: 0
            }
        );
    }
});