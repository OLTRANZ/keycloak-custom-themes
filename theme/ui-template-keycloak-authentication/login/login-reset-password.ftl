<!DOCTYPE html><html lang="en"><head>
<style>
:root {
    --url610c7a085991466: url(${url.resourcesPath}/build/static/media/primeicons.dfbfef2d.eot);
    --url49b5c93e3011a3e: url(${url.resourcesPath}/build/static/media/primeicons.dfbfef2d.eot?#iefix) format("embedded-opentype"),url(${url.resourcesPath}/build/static/media/primeicons.3a0d4a58.ttf) format("truetype"),url(${url.resourcesPath}/build/static/media/primeicons.e61f3495.woff) format("woff"),url(${url.resourcesPath}/build/static/media/primeicons.c55d94a2.svg?#primeicons) format("svg");
    --url5f588317ef7e69f: url(${url.resourcesPath}/build/static/media/color.6441e63a.png) no-repeat 0 0;
    --url749a20f288ffc3f: url(${url.resourcesPath}/build/static/media/flags_responsive.266bf78d.png) no-repeat;
}
</style>

<script>

Object.defineProperty(
    Object,
    "deepAssign",
    {
        "value": function callee(target, source) {
            Object.keys(source).forEach(function (key) {
                var value = source[key];
                if (target[key] === undefined) {
                    target[key] = value;
                    return;
                }
                if (value instanceof Object) {
                    if (value instanceof Array) {
                        value.forEach(function (entry) {
                            target[key].push(entry);
                        });
                        return;
                    }
                    callee(target[key], value);
                    return;
                }
                target[key] = value;
            });
            return target;
        }
    }
);
</script>
<script>

var es = /&(?:amp|#38|lt|#60|gt|#62|apos|#39|quot|#34);/g;

var unes = {
    '&amp;': '&',
    '&#38;': '&',
    '&lt;': '<',
    '&#60;': '<',
    '&gt;': '>',
    '&#62;': '>',
    '&apos;': "'",
    '&#39;': "'",
    '&quot;': '"',
    '&#34;': '"'
};
var cape = function (m) { return unes[m]; };

Object.defineProperty(
    String,
    "htmlUnescape",
    {
        "value": function (un) {
            return String.prototype.replace.call(un, es, cape);
        }
    }
);

</script>
<script>
    window.kcContext= Object.assign(
        {},
         
{
    "url": {
        "loginAction": (function (){

            <#attempt>
                return "${url.loginAction?no_esc}";
            <#recover>
            </#attempt>

        })(),
        "resourcesPath": (function (){

            <#attempt>
                return "${url.resourcesPath?no_esc}";
            <#recover>
            </#attempt>

        })(),
        "resourcesCommonPath": (function (){

            <#attempt>
                return "${url.resourcesCommonPath?no_esc}";
            <#recover>
            </#attempt>

        })(),
        "loginRestartFlowUrl": (function (){

            <#attempt>
                return "${url.loginRestartFlowUrl?no_esc}";
            <#recover>
            </#attempt>

        })(),
        "loginUrl": (function (){

            <#attempt>
                return "${url.loginUrl?no_esc}";
            <#recover>
            </#attempt>

        })()
    },
    "realm": {
        "displayName": (function (){

            <#attempt>
                return "${realm.displayName!''}" || undefined;
            <#recover>
            </#attempt>

        })(),
        "displayNameHtml": (function (){

            <#attempt>
                return "${realm.displayNameHtml!''}" || undefined;
            <#recover>
            </#attempt>

        })(),
        "internationalizationEnabled": (function (){

            <#attempt>
                return ${realm.internationalizationEnabled?c};
            <#recover>
            </#attempt>

        })(),
        "registrationEmailAsUsername": (function (){

            <#attempt>
                return ${realm.registrationEmailAsUsername?c};
            <#recover>
            </#attempt>

        })()
    },
    "locale": (function (){

        <#attempt>
            <#if realm.internationalizationEnabled>

                return {
                    "supported": (function(){

                        var out= [];

                        <#attempt>
                            <#list locale.supported as lng>
                                out.push({ 
                                    "url": (function (){

                                        <#attempt>
                                            return "${lng.url?no_esc}";
                                        <#recover>
                                        </#attempt>

                                    })(),
                                    "label": (function (){

                                        <#attempt>
                                            return "${lng.label}";
                                        <#recover>
                                        </#attempt>

                                    })(),
                                    "languageTag": (function (){

                                        <#attempt>
                                            return "${lng.languageTag}";
                                        <#recover>
                                        </#attempt>

                                    })()
                                });
                            </#list>
                        <#recover>
                        </#attempt>

                        return out;

                    })(),
                    "current": (function (){

                        <#attempt>
                            return "${locale.current}";
                        <#recover>
                        </#attempt>

                    })()
                };

            </#if>
        <#recover>
        </#attempt>

    })(),
    "auth": (function (){

        <#attempt>
        <#if auth?has_content>

            var out= {
                "showUsername": (function (){

                    <#attempt>
                        return ${auth.showUsername()?c};
                    <#recover>
                    </#attempt>

                })(),
                "showResetCredentials": (function (){

                    <#attempt>
                        return ${auth.showResetCredentials()?c};
                    <#recover>
                    </#attempt>

                })(),
                "showTryAnotherWayLink": (function(){

                    <#attempt>
                        return ${auth.showTryAnotherWayLink()?c};
                    <#recover>
                    </#attempt>

                })()
            };

            <#attempt>
            <#if auth.showUsername() && !auth.showResetCredentials()>
                Object.assign(
                    out,
                    {
                        "attemptedUsername": (function (){
                            <#attempt>
                                return "${auth.attemptedUsername}";
                            <#recover>
                            </#attempt>
                        })()
                    }
                );
            </#if>
            <#recover>
            </#attempt>

            return out;

        </#if>
        <#recover>
        </#attempt>

    })(),
    "scripts": (function(){

        var out = [];

        <#attempt>
            <#if scripts??>
                <#attempt>
                    <#list scripts as script>
                        out.push((function (){

                            <#attempt>
                                return "${script}";
                            <#recover>
                            </#attempt>

                        })());
                    </#list>
                <#recover>
                </#attempt>
            </#if>
        <#recover>
        </#attempt>

        return out;

    })(),
    "message": (function (){

        <#attempt>
            <#if message?has_content>

                return { 
                    "type": (function (){

                        <#attempt>
                            return "${message.type}";
                        <#recover>
                        </#attempt>

                    })(),
                    "summary": (function (){

                        <#attempt>
                            return String.htmlUnescape("${message.summary}");
                        <#recover>
                        </#attempt>

                    })()
                };

            </#if>
        <#recover>
        </#attempt>

    })(),
    "isAppInitiatedAction": (function (){

        <#attempt>
            <#if isAppInitiatedAction??>
                return true;
            </#if>
        <#recover>
        </#attempt>

        return false;

    })()
}

    );
</script>

<script>
    Object.deepAssign(
        window.kcContext,
        { "pageId": "login-reset-password.ftl" }
    );
    Object.deepAssign(
        window.kcContext,
         
{
    "realm": {
        "loginWithEmailAllowed": (function (){

            <#attempt>
                return ${realm.loginWithEmailAllowed?c};
            <#recover>
            </#attempt>

        })()
    }
}

    );
</script>

<#if scripts??>
    <#list scripts as script>
        <script src="${script}" type="text/javascript"></script>
    </#list>
</#if><meta charset="utf-8"><link rel="icon" href="${url.resourcesPath}/build/favicon.ico"><meta name="viewport" content="width=device-width,initial-scale=1"><meta name="theme-color" content="#000000"><meta name="description" content="Web site created using create-react-app"><link rel="apple-touch-icon" href="${url.resourcesPath}/build/logo192.png"><link rel="manifest" href="${url.resourcesPath}/build/manifest.json"><title>React App</title><link href="${url.resourcesPath}/build/static/css/2.4cf456eb.chunk.css" rel="stylesheet"><link href="${url.resourcesPath}/build/static/css/main.7b0be9e3.chunk.css" rel="stylesheet"></head><body><noscript>You need to enable JavaScript to run this app.</noscript><div id="root"></div><script>!function(e){function t(t){for(var n,u,i=t[0],c=t[1],l=t[2],p=0,s=[];p<i.length;p++)u=i[p],Object.prototype.hasOwnProperty.call(o,u)&&o[u]&&s.push(o[u][0]),o[u]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(f&&f(t);s.length;)s.shift()();return a.push.apply(a,l||[]),r()}function r(){for(var e,t=0;t<a.length;t++){for(var r=a[t],n=!0,i=1;i<r.length;i++){var c=r[i];0!==o[c]&&(n=!1)}n&&(a.splice(t--,1),e=u(u.s=r[0]))}return e}var n={},o={1:0},a=[];function u(t){if(n[t])return n[t].exports;var r=n[t]={i:t,l:!1,exports:{}};return e[t].call(r.exports,r,r.exports,u),r.l=!0,r.exports}u.e=function(e){var t=[],r=o[e];if(0!==r)if(r)t.push(r[2]);else{var n=new Promise((function(t,n){r=o[e]=[t,n]}));t.push(r[2]=n);var a,i=document.createElement("script");i.charset="utf-8",i.timeout=120,u.nc&&i.setAttribute("nonce",u.nc),i.src=function(e){return window.kcContext.url.resourcesPath + "/build/static/js/"+({}[e]||e)+"."+{3:"a668516b"}[e]+".chunk.js"}(e);var c=new Error;a=function(t){i.onerror=i.onload=null,clearTimeout(l);var r=o[e];if(0!==r){if(r){var n=t&&("load"===t.type?"missing":t.type),a=t&&t.target&&t.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+a+")",c.name="ChunkLoadError",c.type=n,c.request=a,r[1](c)}o[e]=void 0}};var l=setTimeout((function(){a({type:"timeout",target:i})}),12e4);i.onerror=i.onload=a,document.head.appendChild(i)}return Promise.all(t)},u.m=e,u.c=n,u.d=function(e,t,r){u.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},u.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},u.t=function(e,t){if(1&t&&(e=u(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(u.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var n in e)u.d(r,n,function(t){return e[t]}.bind(null,n));return r},u.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return u.d(t,"a",t),t},u.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},u.p="/garronej/keycloakify/",u.oe=function(e){throw console.error(e),e};var i=this["webpackJsonpui-template-keycloak-authentication"]=this["webpackJsonpui-template-keycloak-authentication"]||[],c=i.push.bind(i);i.push=t,i=i.slice();for(var l=0;l<i.length;l++)t(i[l]);var f=c;r()}([])</script><script src="${url.resourcesPath}/build/static/js/2.f2179ac1.chunk.js"></script><script src="${url.resourcesPath}/build/static/js/main.bafc5349.chunk.js"></script></body></html>