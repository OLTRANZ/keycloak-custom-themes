<#macro mainLayout active bodyClass>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">

    <title>${msg("accountManagementTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/fonts/baselogo.png">
    <#if properties.stylesCommon?has_content>
        <#list properties.stylesCommon?split(' ') as style>
            <link href="${url.resourcesCommonPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
</head>
<body class="admin-console user ${bodyClass}" style="background: #edf0f5;">   
    <header class="navbar navbar-default navbar-pf navbar-main header">
        <nav class="navbar" role="navigation">
            <div class="navbar-header">
                <div class="container">
                    <h1 class="navbar-title">Keycloak</h1>
                </div>
            </div>
            <div class="navbar-collapse navbar-collapse-1">
                <div class="container">
                    <ul class="nav navbar-nav navbar-utility">
                        <#if realm.internationalizationEnabled>
                            <li>
                                <div class="kc-dropdown" id="kc-locale-dropdown">
                                    <a href="#" id="kc-current-locale-link">${locale.current}</a>
                                    <ul>
                                        <#list locale.supported as l>
                                            <li class="kc-dropdown-item"><a href="${l.url}">${l.label}</a></li>
                                        </#list>
                                    </ul>
                                </div>
                            <li>
                        </#if>
                        <#if referrer?has_content && referrer.url?has_content><li><a href="${referrer.url}" id="referrer">${msg("backTo",referrer.name)}</a></li></#if>
           
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="container" style="height: 105%">
        <div class="bs-sidebar col-sm-3" >
            <ul style="list-style-type: none;">
                <li >
                <a href="${url.accountUrl}">
                    <img src="${url.resourcesPath}/fonts/baselogo.png" alt="logo" class="center-vertically" style="margin-left:20%"/>
                    <img src="${url.resourcesPath}/fonts/AuthKey.png" alt="logo" class="center-vertically" />
                </a>
                </li>
                <li class="<#if active=='account'>active</#if>" style="">
                <a href="${url.accountUrl}">
                <i class="glyphicon glyphicon-user"></i>
                <span>${msg("account")}</span></a>
                </li>
                <#if features.passwordUpdateSupported>
                <li class="<#if active=='password'>active</#if>">
                <a href="${url.passwordUrl}">
                <i class="glyphicon glyphicon-lock"></i>
                <span>${msg("password")}</span></a>
                </li></#if>
                <li class="<#if active=='totp'>active</#if>">
                <a href="${url.totpUrl}">
                <i class="glyphicon glyphicon-qrcode"></i>
                <span>${msg("authenticator")}</span></a>
                </li>
                <#if features.identityFederation><li class="<#if active=='social'>active</#if>"><a href="${url.socialUrl}">${msg("federatedIdentity")}</a></li></#if>
                <li class="<#if active=='sessions'>active</#if>">
                <a href="${url.sessionsUrl}">
                <i class="glyphicon glyphicon-time"></i>
                <span>${msg("sessions")}</span></a></li>
                <li class="<#if active=='applications'>active</#if>">
                <a href="${url.applicationsUrl}">
                <i class="glyphicon glyphicon-list"></i>
                <span>${msg("applications")}<span></a></li>
                <#if referrer?has_content && referrer.url?has_content>
                    <li><a href="${referrer.url}" id="referrer">
                    <i class="glyphicon glyphicon-cog"></i>
                    <span>${msg("backTo",referrer.name)}</span>
                    </a></li>
                </#if>
                <li><a href="${url.logoutUrl}">
                <i class="glyphicon glyphicon-log-out"></i>
                <span>${msg("doSignOut")}</span>
                </a></li>
                <#if features.log>
                <li class="<#if active=='log'>active</#if>">
                <a href="${url.logUrl}">${msg("log")}</a>
                </li></#if>
                <#if realm.userManagedAccessAllowed && features.authorization>
                <li class="<#if active=='authorization'>active</#if>">
                <a href="${url.resourceUrl}">${msg("myResources")}</a></li></#if>
            </ul>
        </div>

        <div class="col-sm-9 content-area" style="padding-top: 16%;background: #edf0f5;">
            <#if message?has_content>
                <div class="alert alert-${message.type}" style="background: #000;justify-content:center;display:flex">
                    <#if message.type=='success' ><span class="pficon pficon-ok"></span></#if>
                    <#if message.type=='error' ><span class="pficon pficon-error-circle-o"></span></#if>
                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                </div>
            </#if>

            <#nested "content">
        </div>
    </div>

</body>
</html>
</#macro>