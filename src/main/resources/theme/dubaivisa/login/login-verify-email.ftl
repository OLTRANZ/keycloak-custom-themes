<#import "template.ftl" as layout>
<#import "./resources/fonts/oltranzlogo.png" as oltranzlogo>
<@layout.registrationLayout displayInfo=false displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "form">
            <div class="container" style="width:100%;height:100%">           
                <div style="margin-top:10%; margin-left:16%" class="card col-md-8 col-sm-8 col-8">
                    <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class="card col-md-6 col-6 col-sm-7">
                        <div style="padding-left:45%;margin-bottom:10%;">
                            <img src="${url.resourcesPath}/fonts/oltranzlogo.png"
                            style="width:20%;height:20%;" alt="logo" class="center-vertically" style="margin-left:20%"/>
                        </div>
                        <div class="panel panel-info" style="border:1px solid silver;">
                                <div class="panel-body">
                                    <div class="panel-title" style="padding-bottom:5%; font-weight:500;font-size: 2rem;font-family:arial;">Email Verification</div>
                                    <div style="pading-top:40%;
                                                height:40px
                                                ">
                                        <p> ${msg("verifyEmailMessage")}</p>
                                    </div>
                                    <div style="pading-top:30%;
                                                height:30%">
                                        <p> ${msg("emailVerifyInstruction1")}</p>
                                    </div>
                                    <div style="height:30%;">
                                        <p class="instruction">
                                            ${msg("emailVerifyInstruction2")}
                                            <br/>
                                            <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
                                        </p>
                                    </div>
                                </div>
                        </div>
                        <div style="color:#808080;margin-top:35%;margin-left:20%;"><b>Oltranz</b> &emsp;  &emsp;  Copyright Ⓒ Dubai Visa 2021.</div>
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>