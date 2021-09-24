<#import "template.ftl" as layout>
<#import "./resources/fonts/oltranzlogo.png" as oltranzlogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
        <#if realm.password>
            <div class="container" style="width:100%;height:100%">
                <div id="loginbox" style="margin-top:10%; margin-left:25%" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class=" col-md-6 col-6 col-sm-7">
                        <div style="padding-left:25%;margin-bottom:10%;">
                            <img src="${url.resourcesPath}/fonts/oltranzlogo.png"
                            style="width:20%;height:20%;" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        </div>
                        <div class="panel-body">
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-7">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>

                            <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                                    <div class="${properties.kcInputWrapperClass!}" style="width: 60%; margin-bottom:10px;">
                                        <#if usernameEditDisabled??>
                                            <input tabindex="1" id="username"
                                             style="height:50px;border-radius:5px;background-color:#EEEEEE;"
                                             class="${properties.kcInputClass!}"
                                             name="username" value="${(login.username!'')}" 
                                             type="text" disabled placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                        <#else>
                                            <input tabindex="1" id="username" class="${properties.kcInputClass!}"
                                            style="height:50px;background-color:#EEEEEE"
                                             name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" 
                                             placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                        </#if>
                                    </div>
                                    
                                    <div class="${properties.kcInputWrapperClass!}" style="width: 60%; margin-bottom:10px;">
                                        <input tabindex="2" 
                                            style="height:50px;border-radius:5px;
                                            background-color:#EEEEEE"
                                            id="password" 
                                            class="${properties.kcInputClass!}" 
                                            name="password" 
                                            type="password" 
                                            autocomplete="off" 
                                            placeholder="${msg("password")}"/>
                                    </div>
                                    <div id="kc-form-buttons" style="width: 67%;" class="${properties.kcFormButtonsClass!}">
                                        <div class="${properties.kcFormButtonsWrapperClass!}">
                                            <input tabindex="4" style="width:100%;background-color:#4baaf5;color:white;border-radius:5px;
                                            border:none; height:50px; font-weight:bold;"
                                            name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                                            <#if realm.password && social.providers??>
                                                <#list social.providers as p>
                                                    <a href="${p.loginUrl}" id="zocial-${p.alias}" class="btn btn-primary">${msg("doLogIn")} With ${p.displayName}</a>
                                                </#list>
                                            </#if>
                                        </div>
                                    </div>

                                    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                                        <div class="form-group" style="width: 67%;margin-bottom:40px;">
                                            <div class="row control" style="display: flex; padding-left:35%;">
                                                <#if realm.resetPasswordAllowed>
                                                    <div>
                                                        <a href="${url.loginResetCredentialsUrl}"
                                                         style="text-decoration:none;color:#C0C0C0"
                                                        class="registerlink" >${msg("doForgotPassword")}</a>
                                                    </div>
                                                </#if>
                                            </div>
                                        </div>
                                        <div class="form-group" style="width: 67%">
                                            <div class="row control" style="display: flex;padding-left:12%;">
                                                <div>
                                                    <p style="color:#808080">Don't you have an account?
                                                        <a tabindex="6" href="${url.registrationUrl}"
                                                            style="text-decoration:none;color:#4baaf5;"
                                                            class="registerlink">
                                                            ${msg("doRegister")}
                                                        </a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </#if>
                            </form>
                        </div>
                        <div style="padding-top:20%;color:#808080;"><b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ Dubai Visa 2021.</div>
                    </div>  
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>