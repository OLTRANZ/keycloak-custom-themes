<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
    <div class="container" style="width:100%;height:100%">
                <div class="col-md-4 col-sm-4 col-4" style="background-color:#206df7">
                    <div style="margin-top:80%">
                        <img src="${url.resourcesPath}/fonts/baselogo.png" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        <img src="${url.resourcesPath}/fonts/AuthKey.png" alt="logo" class="center-vertically" />
                    </div>
                </div>
                <div id="loginbox" style="margin-top:10%;" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class="panel panel-info col-md-6 col-6 col-sm-7">
                        <div class="panel-heading">
                            <div class="panel-title">Register</div>
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
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!} inputlabel">${msg("firstName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                    <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName"
                           value="${(register.formData.firstName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('firstName')>
                        <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!} inputlabel">${msg("lastName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                    <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName"
                           value="${(register.formData.lastName!'')}"
                           aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                    />

                    <#if messagesPerField.existsError('lastName')>
                        <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('phoneNumber',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.phoneNumber" class="${properties.kcLabelClass!} inputlabel">${msg("phoneNumber")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-phoneNumber-alt"></i></span>  -->
                
                    <input
                    type="text"
                    id="user.attributes.phoneNumber"
                    class="${properties.kcInputClass!}"
                    name="user.attributes.phoneNumber"
                    value="${(register.formData['user.attributes.phoneNumber']!'')}"
                    />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!} inputlabel">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>  -->
                    <input style="width:100%" type="text" id="email" class="${properties.kcInputClass!}" name="email"
                           value="${(register.formData.email!'')}" autocomplete="email"
                           aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                    />

                    <#if messagesPerField.existsError('email')>
                        <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <#if !realm.registrationEmailAsUsername>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="username" class="${properties.kcLabelClass!} inputlabel">${msg("username")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                        <input type="text" id="username" class="${properties.kcInputClass!}" name="username"
                               value="${(register.formData.username!'')}" autocomplete="username"
                               aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                        />

                        <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if>

            <#if passwordRequired??>
                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password" class="${properties.kcLabelClass!} inputlabel">${msg("password")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                    <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                        <input style="width: 100%" type="password" id="password" class="${properties.kcInputClass!}" name="password"
                               autocomplete="new-password"
                               aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password')>
                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>

                <div class="${properties.kcFormGroupClass!}">
                    <div class="${properties.kcLabelWrapperClass!}">
                        <label for="password-confirm"
                               class="${properties.kcLabelClass!} inputlabel">${msg("passwordConfirm")}</label>
                    </div>
                    <div class="${properties.kcInputWrapperClass!}" style="width:100%">
                    <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                        <input type="password" id="password-confirm" class="${properties.kcInputClass!}"
                               name="password-confirm"
                               aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                        />

                        <#if messagesPerField.existsError('password-confirm')>
                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </#if>
                    </div>
                </div>
            </#if>

            <#if recaptchaRequired??>
                <div class="form-group">
                    <div class="${properties.kcInputWrapperClass!}">
                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                    </div>
                </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}" style="margin-left:0px;margin-right: 0px">
                    <input style="width: 100%" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                </div>
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}" style="display: flex;
    justify-content: center;">
                    <div class="${properties.kcFormOptionsWrapperClass!}" >
                        <span><a href="${url.loginUrl}" class="registerlink">Already have an account? Sign in</a></span>
                    </div>
                </div>

            </div>
        </form>
        </div>
                    </div>
                    <div class="col-md-3 col-3 col-sm-2"></div>
                </div>
            </div>
    </#if>
</@layout.registrationLayout>