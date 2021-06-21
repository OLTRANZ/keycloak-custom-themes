<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
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
                            <div class="panel-title">Reset Password</div>
                            <#--  <#if realm.resetPasswordAllowed>
                                <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></div>
                            </#if>  -->
                        </div>

                        <div class="panel-body" >
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-12">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>
        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!} inputlabel"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                </div>
                <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                <#--  <span class="input-group-addon">
                <i class="glyphicon glyphicon-envelope"></i>
                </span>  -->
                    <#if auth?has_content && auth.showUsername()>
                        <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus value="${auth.attemptedUsername}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    <#else>
                        <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                    </#if>

                    <#if messagesPerField.existsError('username')>
                        <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                    ${kcSanitize(messagesPerField.get('username'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>
            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}" style="margin-right: 0px;margin-left: 0px">
                    <input style="width:100%" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}" style="display: flex;
    justify-content: center;">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}" class="registerlink">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                    </div>
                </div>
            </div>
        </form>
        </div>
        </div>
        <div class="col-md-3 col-3 col-sm-3"></div>
        </div>
        </div>
    <#elseif section = "info" >
        ${msg("emailInstruction")}
    </#if>
</@layout.registrationLayout>
