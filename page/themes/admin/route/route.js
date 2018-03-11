import Bank from "../pages/Bank.js";
import Login from "../pages/Login.js";
const User = {
    props: ["id"],
    template: `<div>
    User {{ id }}
    <hr/>
    <router-link to="/admin" >Back</router-link>
    
    </div>`
};
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
        path: "*",
        component: Bank
    }
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