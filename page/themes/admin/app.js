console.log("app in root");
import { store } from "./store/store.js";
import { router } from "./route/route.js";
// import EventBus from "./mixins/eventBus.js";

var vm = new Vue({
    router: router,
    store: store,
    mixins: [],
    data() {
        return {
            theme: "adminlte"
        };
    },
    el: "#app",
    methods: {},
    computed: {},
    watch: {},
    components: {},
    beforeCreate() {},
    created() {},
    beforeMount() {},
    mounted() {},
    beforeUpdate() {},
    updated() {},
    beforeDestroy() {},
    destroyed() {}
});
var version = Vue.version;
console.log("vue version is:", version);