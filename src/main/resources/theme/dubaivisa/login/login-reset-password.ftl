<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
    <div class="container" style="width:100%;background-color:white">
        <div id="loginbox" style="margin-top:13%;margin-left:25%" class="mainbox col-md-8 col-sm-8 col-8">
            <div class="col-md-3 col-3 col-sm-2"></div> 
                <div class="col-md-6 col-6 col-sm-7">
                    <div>
                        <div style="padding-left:25%;margin-bottom:10%;">
                            <img src="${url.resourcesPath}/fonts/oltranzlogo.png"
                            style="width:20%;height:20%;" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        </div>
                    </div>
                    <div class="panel-body" >
                        <#if message?has_content>
                            <div id="login-alert" class="alert alert-danger col-sm-7">
                                <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                            </div>
                        </#if>
                        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                            <div class="${properties.kcFormGroupClass!}">
                                <div class="${properties.kcLabelWrapperClass!}">
                                    <div class="${properties.kcInputWrapperClass!}" style="width:60%">
                                        <#--  <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-envelope"></i>
                                        </span>  -->
                                        <#if auth?has_content && auth.showUsername()>
                                            <input type="text" id="username" name="username" class="${properties.kcInputClass!}" placeholder="Username" 
                                            style="height:50px; background-color:#EEEEEE" autofocus value="${auth.attemptedUsername}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        <#else>
                                            <input type="text" id="username" name="username" class="${properties.kcInputClass!}" 
                                            style="height:50px; background-color:#EEEEEE" placeholder="Username" autofocus aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        </#if>

                                        <#if messagesPerField.existsError('username')>
                                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                            </span>
                                        </#if>
                                    </div>
                                </div>
                                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}" style="margin-top:10px; margin-right: 0px;margin-left: 0px">
                                    <input style="width:60%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;
                                        border:none;" type="submit" value="${msg("doSubmit")}"/>
                                </div>
                                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}" style="display: flex; width: 67% ;padding-left:15%;">
                                    <div class="${properties.kcFormOptionsWrapperClass!}">
                                        <span><a href="${url.loginUrl}" 
                                        style="text-decoration:none; color:#C0C0C0" class="registerlink">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div style="padding-top:30%;color:#808080;">
                        <b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ Dubai Visa 2021.
                    </div>
                </div>
            </div>
        </div>
    </div>
</#if>
</@layout.registrationLayout>
