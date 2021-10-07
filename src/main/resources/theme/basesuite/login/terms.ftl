<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("termsTitle")}
    <#elseif section = "form">
    <style>
        .mainContainer{
            width:100%;
            height:100%;
            background-color:white;
        }
        .mainDiv{
            padding-top:5%; 
            margin-left:25%
            }
        .pagelogo{
            padding-left:40%;
            margin-bottom:10%;
        }
        
        .footer{
            padding-top:60%;
            padding-left:15%;
            color:#808080;
        }
        .imageSize{
            width:20%;height:20%;
        }
        .form_card{
            padding: 30px 30px 30px 30px;
            border: solid 1px;
            background-color: #EEEEEE;
            border-radius: 5px;
            
        }
        @media screen and (max-width: 1024px){
            .mainContainer{
            width:100%;
            height:100%;
            background-color:white;
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
                height:100%;
                background-color:white;
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
                height:100%;
                background-color:white;
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
                height:100%;
                background-color:white;
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
                height:100%;
                background-color:white;
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
            <div class="col-md-2 col-3 col-sm-2">        
            </div>
            <div class=" col-md-6 col-6 col-sm-7">

                <div class="pagelogo">
                    <img src="${url.resourcesPath}/fonts/baselogo.png"
                    alt="logo" class="imageSize" />
                </div>
                <div class="form_card">
                    <div id="kc-terms-text">
                        <p>Please, find the terms and conditions on this link <br/> <a href ="https://www.oltranz.com/terms-of-use" target="_blank" >Terms and Conditions</a></p>
                    </div>
                    <form class="form-actions" action="${url.loginAction}" method="POST">
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="accept" id="kc-accept" type="submit" value="${msg("doAccept")}"/>
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" name="cancel" id="kc-decline" type="submit" value="${msg("doDecline")}"/>
                    </form>
                </div>
                <div class="footer"><b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ BaseSMS 2021.</div>
            </div>
        </div>
    </div>    
    </#if>
</@layout.registrationLayout>
