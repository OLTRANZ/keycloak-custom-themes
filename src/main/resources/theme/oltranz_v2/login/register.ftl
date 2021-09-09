<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
    <style>
        .mainContainer{
            width:100%;
            height:100%
        }
        .mainbox{
            margin-top:6%;
        }
        .panel-body{
            width:50%;
        }
        .pagelogo{
            padding-left:23%;margin-bottom:10%;
        }
        .imageSize{
            width:20%;height:20%;
        }
        .inputFields{
            width:60%;margin-bottom:10px;
        }
        .confirmPasswordDiv{
            width:60%;height:50%;
        }
        .inpuDesign{
            height:50px;border-radius:5px;background-color:#EEEEEE;
        }
        #username{
            background-color:#EEEEEE;
        }
        #password{
             background-color:#EEEEEE;
        }
        .registerdiv{
            margin-left:0px;margin-right: 0px
           
        }
        .submitInput{
            width: 60%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
        }
        .footer{
            padding-top:10%;
        }
         @media screen and (max-width: 1024px){
                .mainContainer{
                    width:100%;
                    height:100%
                }
                .mainbox{
                    padding-top:20%;
                }
                .leftSize{
                    width:35%;
                }
                .panel-body{
                    width:70%;
                   
                }
                .pagelogo{
                    padding-left:23%;margin-bottom:10%;
                }
                .imageSize{
                    width:20%;height:20%;
                }
                .inputFields{
                    width:60%;margin-bottom:10px;
                }
                .confirmPasswordDiv{
                    width:60%;height:50%;
                }
                .inpuDesign{
                    height:50px;border-radius:5px;background-color:#EEEEEE;
                }
                #username{
                    background-color:#EEEEEE;
                }
                #password{
                    background-color:#EEEEEE;
                }
                .registerdiv{
                    margin-left:0px;margin-right: 0px
                
                }
                .submitInput{
                    width: 60%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
                }
                .footer{
                    padding-top:50%;
                }
         }
         @media screen and (max-width: 920px){
                .mainContainer{
                    width:100%;
                    height:100%
                }
                .mainbox{
                    padding-top:15%;
                }
                .leftSize{
                    width:35%;
                }
                .panel-body{
                    width:70%;
                   
                }
                .pagelogo{
                    padding-left:23%;margin-bottom:10%;
                }
                .imageSize{
                    width:20%;height:20%;
                }
                .inputFields{
                    width:60%;margin-bottom:10px;
                }
                .confirmPasswordDiv{
                    width:60%;height:50%;
                }
                .inpuDesign{
                    height:50px;border-radius:5px;background-color:#EEEEEE;
                }
                #username{
                    background-color:#EEEEEE;
                }
                #password{
                    background-color:#EEEEEE;
                }
                .registerdiv{
                    margin-left:0px;margin-right: 0px
                
                }
                .submitInput{
                    width: 60%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
                }
                .footer{
                    padding-left:-5%;
                    padding-top:40%;
                }
         }
         @media screen and (max-width: 720px){
              .mainContainer{
                    width:100%;
                    height:100%
                }
                .mainbox{
                    padding-top:15%;
                }
                .leftSize{
                    width:30%;
                }
                .panel-body{
                    width:70%;
                   
                }
                .pagelogo{
                    padding-left:40%;margin-bottom:10%;
                }
                .imageSize{
                    width:40%;height:40%;
                }
                .inputFields{
                    width:100%;margin-bottom:10px;
                }
                .confirmPasswordDiv{
                    width:100%;height:50%;
                }
                .inpuDesign{
                    height:50px;border-radius:5px;background-color:#EEEEEE;
                }
                #username{
                    background-color:#EEEEEE;
                }
                #password{
                    background-color:#EEEEEE;
                }
                .registerdiv{
                    margin-left:0px;margin-right: 0px
                
                }
                .submitInput{
                    width: 100%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
                }
                .footer{
                    padding-top:40%;
                }
         }
         @media screen and (max-width: 620px){
             .mainContainer{
                    width:100%;
                    height:100%
                }
                .mainbox{
                    padding-top:5%;
                }
                .leftSize{
                    width:30%;
                }
                .panel-body{
                    width:70%;
                   
                }
                .pagelogo{
                    padding-left:40%;margin-bottom:10%;
                }
                .imageSize{
                    width:40%;height:40%;
                }
                .inputFields{
                    width:100%;margin-bottom:10px;
                }
                .confirmPasswordDiv{
                    width:100%;height:50%;
                }
                .inpuDesign{
                    height:50px;border-radius:5px;background-color:#EEEEEE;
                }
                #username{
                    background-color:#EEEEEE;
                }
                #password{
                    background-color:#EEEEEE;
                }
                .registerdiv{
                    margin-left:0px;margin-right: 0px
                
                }
                .submitInput{
                    width: 100%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
                }
                .footer{
                    padding-top:10%;
                }
         }
         @media screen and (max-width: 520px){
                .mainContainer{
                    width:100%;
                    height:100%
                }
                .mainbox{
                    padding-top:5%;
                }
                .leftSize{
                    width:30%;
                }
                .panel-body{
                    width:70%;
                   
                }
                .pagelogo{
                    padding-left:40%;margin-bottom:10%;
                }
                .imageSize{
                    width:40%;height:40%;
                }
                .inputFields{
                    width:100%;margin-bottom:10px;
                }
                .confirmPasswordDiv{
                    width:100%;height:50%;
                }
                .inpuDesign{
                    height:50px;border-radius:5px;background-color:#EEEEEE;
                }
                #username{
                    background-color:#EEEEEE;
                }
                #password{
                    background-color:#EEEEEE;
                }
                .registerdiv{
                    margin-left:0px;margin-right: 0px
                
                }
                .submitInput{
                    width: 100%;background-color:#4baaf5;color:white;border-radius:5px;border:none;height:50px;margin-bottom:20px;"
                }
                .footer{
                    padding-top:10%;
                }
         }

    </style>
    <div class="mainContainer container">
        
        <div class="leftSize col-md-6 col-sm-6 col-6"> 
        </div> 
        <div id="loginbox" class="mainbox col-md-8 col-sm-8 col-8">
            <div class=" col-md-6 col-3 col-sm-2"></div>
            <div class="col-6">
                <div class="panel-body">
                    <div>
                        <div class="pagelogo">
                            <img src="${url.resourcesPath}/fonts/baselogo.png" class="imageSize"
                             alt="logo" class="center-vertically"/>
                        </div>
                    </div>
                    <#if message?has_content>
                        <div id="login-alert" class="alert alert-danger col-sm-7">
                            <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                        </div>
                    </#if>
                    <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
                        <div class="${properties.kcFormGroupClass!}">
                            <div class="inputFields ${properties.kcInputWrapperClass!}">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                                <input type="text" id="firstName" class="inpuDesign ${properties.kcInputClass!}" name="firstName"
                                     placeholder="First Name"
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
                            <div class="inputFields ${properties.kcInputWrapperClass!}">
                            <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>  -->
                                <input type="text" id="lastName" class="inpuDesign ${properties.kcInputClass!}" name="lastName"
                                     placeholder="Last Name"
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
                            <div class="inputFields ${properties.kcInputWrapperClass!}">
                            
                                <input
                                type="text"
                                id="user.attributes.phoneNumber"
                                class="inpuDesign ${properties.kcInputClass!}"
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
                            
                            <div class="inputFields ${properties.kcInputWrapperClass!}">
                            <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>  -->
                                <input type="text" id="email" class="inpuDesign ${properties.kcInputClass!}" name="email"
                                    value="${(register.formData.email!'')}" autocomplete="email"
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
                
                            <div class="inputFields ${properties.kcInputWrapperClass!}">
                                <input type="text" id="username"  class="inpuDesign ${properties.kcInputClass!}" name="username"
                                    
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
                    
                                <div class="inputFields ${properties.kcInputWrapperClass!}">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                                    <input type="password" id="password" class="inpuDesign ${properties.kcInputClass!}" name="password"
                                        autocomplete="new-password" placeholder="Password"
                                        
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
                                <div class="confirmPasswordDiv ${properties.kcInputWrapperClass!}">
                                <#--  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>  -->
                                    <input type="password" id="password-confirm" class="inpuDesign ${properties.kcInputClass!}"
                                        name="password-confirm" placeholder="Confirm password"
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
                            <div>
                                <input class="submitInput" type="submit" value="${msg("doRegister")}"/>
                            </div>
                            <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                <div class="${properties.kcFormOptionsWrapperClass!}" >
                                    <span style="text-decoration:none;color:#C0C0C0;" class="registerlink">Already have an account? <a href="${url.loginUrl}">Sign in</a></span>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>

            <div class="footer" style="color:#808080;"><b>Oltranz</b> &emsp; &emsp; Copyright Ⓒ BaseSMS 2021.</div>
            
        </div>
    </div>
    </#if>
</@layout.registrationLayout>