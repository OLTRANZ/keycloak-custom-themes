<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
    <style>
      .mainContainer{
          width:100%;background-color:white;
      }
      .mainbox{
        padding-top:10%;margin-left:25%;
      }
      .imgDiv{
          padding-left:25%;margin-bottom:10%;
      }
      .imageSize{
          width:20%;height:20%;
      }
      .userNameWrapper{
            width:60%;
      }
      .inputUsername{
          height:50px; background-color:#EEEEEE;
      }
      .submmitInput{
          width:60%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
          border:none;
      }
      .backLoginDiv{
          display: flex; width: 67% ;padding-left:15%;padding-top:10px;
      }
      .footer{
          padding-top:30%;color:#808080;
      }
       @media screen and (max-width: 1024px){
            .mainContainer{
                width:100%;background-color:white;
                }
            .mainbox{
                padding-top:40%;margin-left:25%;
            }
            .imgDiv{
                padding-left:34%;margin-bottom:10%;
            }
            .imageSize{
                width:40%;height:40%;
            }
            .userNameWrapper{
                    width:100%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:100%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 920px){
           .mainContainer{
                width:100%;background-color:white;
                }
            .mainbox{
                padding-top:40%;margin-left:25%;
            }
            .imgDiv{
                padding-left:35%;margin-bottom:10%;
            }
            .imageSize{
                width:40%;height:40%;
            }
            .userNameWrapper{
                    width:100%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:100%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 720px){
           .mainContainer{
                width:100%;background-color:white;
                }
            .mainbox{
                padding-top:40%;margin-left:25%;
            }
            .imgDiv{
                padding-left:35%;margin-bottom:10%;
            }
            .imageSize{
                width:20%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            .leftDiv{
                width:10%;
            }
       }
       @media screen and (max-width: 620px){
             .mainContainer{
                width:100%;background-color:white;
                }
            .mainbox{
                padding-top:50%;margin-left:40%;
            }
            .imgDiv{
                padding-left:25%;margin-bottom:10%;
            }
            .imageSize{
                width:20%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
            
       }
       @media screen and (max-width: 520px){
            .mainContainer{
                width:100%;background-color:white;
                }
            .mainbox{
                padding-top:50%;margin-left:40%;
            }
            .imgDiv{
                padding-left:25%;margin-bottom:10%;
            }
            .imageSize{
                width:20%;height:20%;
            }
            .userNameWrapper{
                    width:60%;
            }
            .inputUsername{
                height:50px; background-color:#EEEEEE;
            }
            .submmitInput{
                width:60%;background-color:#4baaf5;color:white;border-radius:5px;height:50px;margin-top:10px;
                border:none;
            }
            .backLoginDiv{
                display: flex; width: 67% ;padding-left:20%;padding-top:15px;
            }
            .footer{
                padding-top:100%;color:#808080;width:500px;
            }
       }
    </style>
    <div class="mainContainer container">
        <div id="loginbox" class="mainbox col-md-8 col-sm-8 col-8">
            <div class="leftDiv col-md-3 col-3 col-sm-2"></div> 
                <div class="col-md-6 col-6 col-sm-7">
                    <div>
                        <div class="imgDiv">
                            <img src="${url.resourcesPath}/fonts/baselogo.png"
                             alt="logo" class="imageSize center-vertically"/>
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
                                    <div class="userNameWrapper ${properties.kcInputWrapperClass!}">
                                        
                                        <#if auth?has_content && auth.showUsername()>
                                            <input type="text" id="username" name="username" class="inputUsername ${properties.kcInputClass!}" placeholder="Username" 
                                            autofocus value="${auth.attemptedUsername}" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        <#else>
                                            <input type="text" id="username" name="username" class="inputUsername ${properties.kcInputClass!}" 
                                            placeholder="Username" autofocus aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"/>
                                        </#if>

                                        <#if messagesPerField.existsError('username')>
                                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                                        ${kcSanitize(messagesPerField.get('username'))?no_esc}
                                            </span>
                                        </#if>
                                    </div>
                                </div>
                                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                                
                                    <input class="submmitInput" type="submit" value="${msg("doSubmit")}"/>
                                
                                <div id="kc-form-options" class="backLoginDiv ${properties.kcFormOptionsClass!}">
                                    <div class="${properties.kcFormOptionsWrapperClass!}">
                                        <span><a href="${url.loginUrl}" 
                                        style="text-decoration:none; color:#C0C0C0" class="registerlink">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="footer">
                        <b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ BaseSMS 2021.
                    </div>
                </div>
            </div>
        </div>
    </div>
</#if>
</@layout.registrationLayout>
