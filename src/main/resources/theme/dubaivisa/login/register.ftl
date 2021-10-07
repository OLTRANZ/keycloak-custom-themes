<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
    <div class="container" style="width:100%;height:100%">
        
        <div class="col-md-6 col-sm-6 col-6" style="background-color:white"> 
        </div> 
        <div id="loginbox" style="margin-top:6%;" class="mainbox col-md-8 col-sm-8 col-8">
            <div class="col-md-6 col-3 col-sm-2"></div>
            <div class="col-6">
               
                <div class="panel-body" style="width:50%">
                    <div>
                        <div style="padding-left:23%;margin-bottom:10%;">
                            <img src="${url.resourcesPath}/fonts/oltranzlogo.png"
                            style="width:20%;height:20%;" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        </div>
                    </div>
                    <#if message?has_content>
                        <div id="login-alert" class="alert alert-danger col-sm-7">
                            <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                        </div>
                    </#if>
                    <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
                        <div class="${properties.kcFormGroupClass!}">
                            <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                                <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName"
                                    style="height:50px;border-radius:5px;background-color:#EEEEEE;" placeholder="First Name"
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
                            <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                            <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                                <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName"
                                    style="height:50px;border-radius:5px;background-color:#EEEEEE;" placeholder="Last Name"
                                    value="${(register.formData.lastName!'')}"
                                    aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>" />

                                <#if messagesPerField.existsError('lastName')>
                                    <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                        ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                                    </span>
                                </#if>
                            </div>
                        </div>

                        <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('phoneNumber',properties.kcFormGroupErrorClass!)}">
                            <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                            
                                <input
                                type="text"
                                id="user.attributes.phoneNumber"
                                class="${properties.kcInputClass!}"
                                style="height:50px;border-radius:5px;background-color:#EEEEEE;"
                                placeholder="Phone"
                                name="user.attributes.phoneNumber"
                                value="${(register.formData['user.attributes.phoneNumber']!'')}"
                                aria-invalid="<#if messagesPerField.existsError('phoneNumber')>true</#if>"
                                />
                                <#if messagesPerField.existsError('phoneNumber')>
                                    <span id="input-error-phoneNumber" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                        ${kcSanitize(messagesPerField.get('phoneNumber'))?no_esc}
                                    </span>
                                </#if>
                            </div>
                        </div>

                        <div class="${properties.kcFormGroupClass!}">
                            
                            <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                            <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>  -->
                                <input type="text" id="email" class="${properties.kcInputClass!}" name="email"
                                    value="${(register.formData.email!'')}" autocomplete="email"
                                    style="height:50px;border-radius:5px;background-color:#EEEEEE;"
                                    placeholder="Email"
                                    aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                                />

                                <#if messagesPerField.existsError('email')>
                                    <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                        ${kcSanitize(messagesPerField.get('email'))?no_esc}
                                    </span>
                                </#if>
                            </div>
                        </div>

                        
                        <div class="${properties.kcFormGroupClass!}">
                
                            <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                                <input type="text" id="username" class="${properties.kcInputClass!}" name="username"
                                    style="height:50px;border-radius:5px;background-color:#EEEEEE";
                                    value="${(register.formData.username!'')}" autocomplete="username" placeholder="Username"
                                    aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                                />
                                <#if messagesPerField.existsError('username')>
                                    <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                    </span>
                                </#if>
                            </div>
                        </div>
                        

                        <#if passwordRequired??>
                            <div class="${properties.kcFormGroupClass!}">
                    
                                <div class="${properties.kcInputWrapperClass!}" style="width:60%;margin-bottom:10px;">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                                    <input type="password" id="password" class="${properties.kcInputClass!}" name="password"
                                        autocomplete="new-password" placeholder="Password"
                                        style="height:50px;border-radius:5px;background-color:#EEEEEE;"
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
                                <div class="${properties.kcInputWrapperClass!}" style="width:60%;height:50%;">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                                    <input type="password" id="password-confirm" class="${properties.kcInputClass!}"
                                        name="password-confirm" placeholder="Confirm password"
                                        style="height:50px;border-radius:5px;background-color:#EEEEEE;"
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
                                <input style="width: 60%;background-color:#4baaf5;color:white;border-radius:5px;
                                        border:none;height:50px;"  type="submit" value="${msg("doRegister")}"/>
                            </div>
                            <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                <div class="${properties.kcFormOptionsWrapperClass!}" >
                                    <span><a href="${url.loginUrl}"
                                    style="text-decoration:none;color:#C0C0C0;" class="registerlink">Already have an account? Sign in</a></span>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>

            <div style="color:#808080;"><b>Oltranz</b> &emsp; . &emsp; .Copyright Ⓒ Dubai 2021.</div>
            
        </div>
    </div>
    </#if>
</@layout.registrationLayout>