<#import "template.ftl" as layout>
<#import "./resources/fonts/baselogo.png" as baselogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
        <#if realm.password>
            <div class="container" style="width:100%;height:100%">
                <div class="col-md-4 col-sm-4 col-4" style="background-color:#206df7">
                    <div style="margin-top:80%">
                        <img src="${url.resourcesPath}/fonts/baselogo.png" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        <img src="${url.resourcesPath}/fonts/AuthKey.png" alt="logo" class="center-vertically" />
                    </div>
                </div>
                <div id="loginbox" style="margin-top:20%;" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class="panel panel-info col-md-6 col-6 col-sm-7">
                        <div class="panel-heading">
                            <div class="panel-title">Sign In</div>
                            <#if realm.resetPasswordAllowed>
                                <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></div>
                            </#if>
                        </div>

                        <div class="panel-body" >
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-12">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>

                            <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                                <div class="${properties.kcInputWrapperClass!}">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <#if usernameEditDisabled??>
                                        <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                    <#else>
                                        <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>" />
                                    </#if>
                                </div>

                                <div class="${properties.kcInputWrapperClass!}">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input tabindex="2" id="password" class="${properties.kcInputClass!}" name="password" type="password" autocomplete="off" placeholder="${msg("password")}"/>
                                </div>

                                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                    <#if realm.rememberMe && !usernameEditDisabled??>
                                        <div class="checkbox">
                                            <label>
                                                <#if login.rememberMe??>
                                                    <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                                                <#else>
                                                    <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                                                </#if>
                                            </label>
                                        </div>
                                    </#if>
                                </div>

                                <div id="kc-form-buttons" style="margin-top:10px" class="${properties.kcFormButtonsClass!}">
                                    <div class="${properties.kcFormButtonsWrapperClass!}">
                                        <input tabindex="4" class="${properties.kcButtonClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                                        <#if realm.password && social.providers??>
                                            <#list social.providers as p>
                                                <a href="${p.loginUrl}" id="zocial-${p.alias}" class="btn btn-primary">${msg("doLogIn")} With ${p.displayName}</a>
                                            </#list>
                                        </#if>
                                    </div>
                                </div>

                                <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                                    <div class="form-group">
                                        <div class="col-md-12 control">
                                            <div style="border-top: 1px solid#888; padding-top:15px;" >
                                                ${msg("noAccount")}
                                                <a tabindex="6" href="${url.registrationUrl}" style="font-weight: bold;">
                                                    ${msg("doRegister")}
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </#if>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 col-3 col-sm-3"></div>
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>