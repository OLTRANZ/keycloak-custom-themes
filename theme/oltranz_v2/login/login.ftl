<#import "template.ftl" as layout>
<#import "./resources/fonts/baselogo.png" as baselogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
        <#if realm.password>
            <div class="container" style="width:100%;height:100%">
                <#--  <div class="col-md-4 col-sm-4 col-4" style="background-color:#206df7">
                    <div style="margin-top:80%">
                        <img src="${url.resourcesPath}/fonts/baselogo.png" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        <img src="${url.resourcesPath}/fonts/AuthKey.png" alt="logo" class="center-vertically" />
                    </div>
                </div>  -->
                <div id="loginbox" style="margin-top:15%; margin-left:25%" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class="panel panel-info col-md-6 col-6 col-sm-7">
                       
                        <div class="panel-body" >
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-12">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>

                            <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                                    <div class="panel-title">Sign In</div>
                                    <label class="inputlabel"> Email</label>
                                    <div class="${properties.kcInputWrapperClass!}" style="width: 60%;margin-bottom:0">
                                        <#if usernameEditDisabled??>
                                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" disabled/>
                                        <#else>
                                            <input tabindex="1" id="username" class="${properties.kcInputClass!}" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" />
                                        </#if>
                                    </div>
                                    <label class="inputlabel"> Password</label>
                                    <div class="${properties.kcInputWrapperClass!}" style="width: 60%;margin-bottom:0">
                                        <input tabindex="2" 
                                            id="password" 
                                            class="${properties.kcInputClass!}" 
                                            name="password" 
                                            type="password" 
                                            autocomplete="off" 
                                                />
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

                                <div id="kc-form-buttons" style="width: 67%;" class="${properties.kcFormButtonsClass!}">
                                    <div class="${properties.kcFormButtonsWrapperClass!}">
                                        <input tabindex="4" style="width:100%;background-color:#4baaf5;color:white;border-radius:5px;
                                        border:none;height:35px;
                                        " name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                                        <#if realm.password && social.providers??>
                                            <#list social.providers as p>
                                                <a href="${p.loginUrl}" id="zocial-${p.alias}" class="btn btn-primary">${msg("doLogIn")} With ${p.displayName}</a>
                                            </#list>
                                        </#if>
                                    </div>
                                </div>

                                <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                                    <div class="form-group" style="width: 67%;padding-left:30px;">
                                        <div class="row control" style="display: flex;">
                                             <#if realm.resetPasswordAllowed>
                                                <div class="col-6">
                                                <a href="${url.loginResetCredentialsUrl}" class="registerlink" >${msg("doForgotPassword")}</a></div>
                                            </#if>
                                            <p class="col-md-2" style="color:#ADB1BC;">.<p>
                                            <div  class="col-sm-2">
                                                <a tabindex="6" href="${url.registrationUrl}"  class="registerlink">
                                                    ${msg("doRegister")}
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </#if>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>