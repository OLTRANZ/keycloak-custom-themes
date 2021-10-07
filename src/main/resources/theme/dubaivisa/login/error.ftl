<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        ${msg("errorTitle")}
    <#elseif section = "form">
            <div class="container" style="width:100%;height:100%">
                <div id="loginbox" style="margin-top:10%; margin-left:23%" class="mainbox col-md-8 col-sm-8 col-8">
                   <div class="col-md-3 col-3 col-sm-2"></div>
                    <div class=" col-md-6 col-6 col-sm-7">
                        <div id="kc-error-message" style="padding-left:20%">
                            <p class="instruction">${message.summary?no_esc}</p>
                            <#if client?? && client.baseUrl?has_content>
                                <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
                            </#if>
                        </div>
                        <div style="padding-top:70%;color:#808080;"><b>Oltranz</b> &emsp;  &emsp; Copyright Ⓒ Dubai Visa 2021.</div>
                    </div>
                    
                </div>
            </div>
    </#if>
</@layout.registrationLayout>