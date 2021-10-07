<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
            <div class="container" style="width:100%;height:100%">
                <div id="loginbox" style="margin-top:10%; margin-left:25%" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class=" col-md-6 col-6 col-sm-7">
                        
                        <div style="padding-left:23%;margin-bottom:10%;">
                            <img src="${url.resourcesPath}/fonts/oltranzlogo.png"
                            style="width:15%;height:15%;" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        </div>
                        
                            <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" style="width: 90%;padding-left:10%" method="post">
                                <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                                    readonly="readonly" style="display:none;"/>
                                <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

                                <div class="${properties.kcFormGroupClass!}">
                                    <div class="${properties.kcInputWrapperClass!}">
                                        <input type="password" id="password-new" name="password-new" class="${properties.kcInputClass!}"
                                            autofocus autocomplete="new-password" placeholder="New password"
                                            style="height:50px;border-radius:5px;background-color:#EEEEEE;width:100%"
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
                                    <div class="${properties.kcInputWrapperClass!}">
                                        <input type="password" id="password-confirm" name="password-confirm"
                                            class="${properties.kcInputClass!}"
                                            style="height:50px;border-radius:5px;background-color:#EEEEEE;width:100%"
                                            autocomplete="new-password" placeholder="Confirm password"
                                            aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                                        />

                                        <#if messagesPerField.existsError('password-confirm')>
                                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                                            </span>
                                        </#if>

                                    </div>
                                </div>

                                <div class="${properties.kcFormGroupClass!}">
                                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                        <div class="${properties.kcFormOptionsWrapperClass!}">
                                            <#if isAppInitiatedAction??>
                                                <div class="checkbox">
                                                    <label><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked> ${msg("logoutOtherSessions")}</label>
                                                </div>
                                            </#if>
                                        </div>
                                    </div>

                                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                                        <#if isAppInitiatedAction??>
                                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" 
                                            style="width:45%;background-color:#4baaf5;color:white;border-radius:5px;
                                            border:none; height:50px; font-weight:bold;margin-left:5%;" />
                                            <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                                        <#else>
                                            <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" 
                                            style="width:47%;background-color:#4baaf5;color:white;border-radius:5px;
                                            border:none; height:50px; font-weight:bold;margin-left:3%;" />
                                        </#if>
                                    </div>
                                </div>
                            </form>
                            <div style="padding-top:23%;color:#808080;"><b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ Dubai Visa 2021.</div>
    
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>