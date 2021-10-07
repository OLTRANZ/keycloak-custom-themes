<#import "template.ftl" as layout>
<#import "./resources/fonts/baselogo.png" as baselogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
        <#if realm.password>
             <style>
                    .mainContainer{
                        width:100%;
                        height:100%
                    }
                    .mainDiv{
                        padding-top:5%; 
                        margin-left:25%
                        }
                    .pagelogo{
                        padding-left:25%;
                        margin-bottom:10%;
                    }
                    .userNameField{
                        width: 60%;
                        margin-bottom:10px;
                    }
                    .inputUserName{
                        height:50px;
                        border-radius:5px;
                        background-color:#EEEEEE;
                    }
                    .passwordDiv{
                        width: 60%;
                        margin-bottom:10px;
                    }
                    .submitFormGroup{
                        width: 67%;
                    }
                    .buttonLogin{
                        width:100%;
                        background-color:#4baaf5;
                        color:white;
                        border-radius:5px;
                        border:none;
                        height:50px;
                        font-weight:bold;
                    }
                    .forgetForm{
                        width: 67%;
                        margin-bottom:40px;
                        
                    }
                    .forgetDiv{
                        display: flex; padding-left:35%;
                    }
                    .forgetText{
                        text-decoration:none;color:#C0C0C0;
                    }
                    .doRegisterForm{
                        width: 67%
                    }
                    .doRegisterDiv{
                        display: flex;
                        padding-left:12%;
                    }
                    .footer{
                        padding-top:20%;
                        color:#808080;
                    }
                    .imageSize{
                        width:20%;height:20%;
                    }
                    
                    @media screen and (max-width: 1024px){
                       .mainContainer{
                        width:100%;
                        height:100%
                        }
                        .mainDiv{
                            padding-top:30%;
                            margin-left:15%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4baaf5;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:160%;
                            color:#808080;
                        }
                         
                    }
                    @media screen and (max-width: 920px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:30%;
                            margin-left:15%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4baaf5;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:70%;
                            width:350px;
                            color:#808080;
                        }
                    }
                    @media screen and (max-width: 720px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            margin-left:10%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:50%;height:50%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4baaf5;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:50%;
                            width:350px;
                            color:#808080;
                        }
                    }
                    @media screen and (max-width: 620px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:10%;
                            margin-left:16%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:40%;height:40%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4baaf5;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:50%;
                            width:350px;
                            color:#808080;
                        }
                    }
                     @media screen and (max-width: 520px){
                        .mainContainer{
                            width:100%;
                            height:100%
                        }
                        .mainDiv{
                            padding-top:20%;
                            margin-left:5%;
                            }
                        .pagelogo{
                            padding-left:40%;
                            margin-bottom:10%;
                        }
                        .imageSize{
                            width:30%;height:40%;
                        }
                        .userNameField{
                            width: 300px;
                            margin-bottom:20px;
                        }
                        .inputUserName{
                            height:70px;
                            border-radius:5px;
                            background-color:#EEEEEE;
                        }
                        .passwordDiv{
                            width: 300px;
                            margin-bottom:10px;
                        }
                        .submitFormGroup{
                            width: 100%;
                        }
                        .buttonLogin{
                            width:300px;
                            background-color:#4baaf5;
                            color:white;
                            border-radius:5px;
                            border:none;
                            height:50px;
                            font-weight:bold;
                        }
                        .forgetForm{
                            width: 100%;
                            margin-bottom:40px;
                            
                        }
                        .forgetDiv{
                            display: flex; padding-left:40%;
                        }
                        .forgetText{
                            text-decoration:none;color:#C0C0C0;
                        }
                        .doRegisterForm{
                            width: 100%
                        }
                        .doRegisterDiv{
                            display: flex;
                            padding-left:12%;
                            width:350px;
                        }
                        .footer{
                            padding-left:5%;
                            padding-top:30%;
                            width:350px;
                            color:#808080;
                        }
                    }
                
             </style>
            <div class="mainContainer container">
                <div id="loginbox" class="mainDiv col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class=" col-md-6 col-6 col-sm-7">
                        
                        <div class="pagelogo">
                            <img src="${url.resourcesPath}/fonts/baselogo.png"
                            alt="logo" class="imageSize" />
                        </div>

                        <div class="panel-body">
                            <#if message?has_content>
                                <div id="login-alert" class="alert alert-danger col-sm-7">
                                    <span class="kc-feedback-text">${kcSanitize(message.summary)?no_esc}</span>
                                </div>
                            </#if>

                            <form id="kc-form-login" class="${properties.kcFormClass!}" onsubmit="login.disabled = true; return true;" action="${url.loginAction?keep_after('^[^#]*?://.*?[^/]*', 'r')}" method="post">
                                    <div class="userNameField ${properties.kcInputWrapperClass!}">
                                        <#if usernameEditDisabled??>
                                            <input tabindex="1" id="username"
                                             class=" inputUserName ${properties.kcInputClass!}"
                                             name="username" value="${(login.username!'')}" 
                                             type="text" disabled placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                        <#else>
                                            <input tabindex="1" id="username" class="inputUserName ${properties.kcInputClass!}"
                                             name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" 
                                             placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"/>
                                        </#if>
                                    </div>
                                    
                                    <div class="passwordDiv ${properties.kcInputWrapperClass!}">
                                        <input tabindex="2" 
                                            id="password" 
                                            class="inputUserName ${properties.kcInputClass!}" 
                                            name="password" 
                                            type="password" 
                                            autocomplete="off" 
                                            placeholder="${msg("password")}"/>
                                    </div>
                                    <div id="kc-form-buttons" class="submitFormGroup ${properties.kcFormButtonsClass!}">
                                        <div class="${properties.kcFormButtonsWrapperClass!}">
                                            <input tabindex="4" class="buttonLogin"
                                            name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                                            <#if realm.password && social.providers??>
                                                <#list social.providers as p>
                                                    <a href="${p.loginUrl}" id="zocial-${p.alias}" class="btn btn-primary">${msg("doLogIn")} With ${p.displayName}</a>
                                                </#list>
                                            </#if>
                                        </div>
                                    </div>

                                    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                                        <div class="forgetForm form-group">
                                            <div class="forgetDiv row control">
                                                <#if realm.resetPasswordAllowed>
                                                    <div>
                                                        <a href="${url.loginResetCredentialsUrl}"
                                                        class="forgetText registerlink" >${msg("doForgotPassword")}</a>
                                                    </div>
                                                </#if>
                                            </div>
                                        </div> 
                                        <div class="doRegisterForm form-group">
                                            <div class="doRegisterDiv row control">
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
                        <div class="footer"><b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ BaseSMS 2021.</div>
                    </div>  
                </div>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>