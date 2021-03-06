(function(global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
        typeof define === 'function' && define.amd ? define(factory) :
        (global.vueAnalities = factory());
}(this, (function() {
    'use strict';

    /* globals ga */
    function appendScript() {
        var script = document.createElement('script');
        script.async = true;
        script.src = 'https://www.google-analytics.com/analytics.js';
        document.body.appendChild(script);
    }

    function init(id) {
        if (!window.ga) {
            appendScript();
            window.ga = window.ga || function() {
                (ga.q = ga.q || []).push(arguments);
            };
            ga.l = Number(new Date());
            ga('create', id, 'auto');
        }
    }

    function collect(url, id) {
        init(id);
        ga('set', 'page', url);
        ga('send', 'pageview');
    }

    var index = function(router, id) {
        if (typeof router === 'function') {
            router(function(url) {
                collect(url, id);
            });
        } else {
            router.afterEach(function(to) {
                console.log('----to----------------->', to.fullPath, id);
                collect(to.fullPath, id);
            });
        }
    };

    return index;

})));