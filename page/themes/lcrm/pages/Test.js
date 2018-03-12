import Crudlayout from "../components/Printa4table.js";
import crudmix from "../mixins/CrudMixin.js";
export default {
    template: `<Crudlayout>
    
    </Crudlayout>`,
    name: "test",
    mixins: [crudmix],
    data() {
        return {
            theme: "AdminLte"
        };
    },
    created() {
        window.vc = this;
        console.log("vc computer is created");
    },
    mounted() {},
    methods: {},
    computed: {},
    components: {
        Crudlayout
    }
};