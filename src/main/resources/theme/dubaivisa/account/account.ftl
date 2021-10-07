<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>
    
    <div>
        <div class="row" style="background-color:white;
                                border-radius:10px;">
            <div class="col-md-8">
                <h2>${msg("editAccountHtmlTitle")}</h2>
            </div>
            <div class="col-md-4 subtitle">
                    <span class="subtitle">${msg("allFieldsRequired")}</span>
            </div>
        </div>
        <div class="col-md-5" style="margin-top:19%;margin-left:20%;
                                     background-color:white;
                                     padding-left:60px;
                                     padding-right:60px;
                                     padding-bottom:20px;
                                     paddint-top:10px;
                                     border-shadow: 0px 10px 40px rgba(41,50, 65,0.65);
                                     border-sizing:border-box;
                                     border-radius:24px">
            <form action="${url.accountUrl}" class="form-horizontal" style="border:none;" method="post">
                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                <#if !realm.registrationEmailAsUsername>
                    <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                        <div class="inputText">
                            <input type="text" class="form-control" id="username"
                                style="height:35px;border-radius:5px;
                                background-color:#EEEEEE"
                                name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                        </div>
                    </div>
                </#if>

                <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
                    

                    <div class="inputText">
                        <input type="text" class="form-control" style="height:35px;
                                                                       border-radius:5px;
                                                                       background-color:#EEEEEE"
                            id="email" name="email" autofocus value="${(account.email!'')}"/>
                    </div>
                </div>

                <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">
                    

                    <div class="inputText">
                        <input type="text" class="form-control" style="height:35px;
                                                                       border-radius:5px;
                                                                       background-color:#EEEEEE"
                            id="firstName" name="firstName" value="${(account.firstName!'')}"/>
                    </div>
                </div>

                <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">
                   
                    <div class="inputText">
                        <input type="text" class="form-control" style="height:35px;border-radius:5px;
                            background-color:#EEEEEE"
                            id="lastName" name="lastName" value="${(account.lastName!'')}"/>
                    </div>
                </div>

                
                <div>
                    <#if url.referrerURI??><a href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>
                    <div>
                        <button type="submit" style="width:100%;background-color:#4baaf5;color:white;border-radius:5px;
                            border:none; height:35px;font-weight:bold;"
                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}"
                            name="submitAction" value="Save">${msg("doSave")}</button>
                    </div>
                </div>
                     
                  
            </form>
        </div>
        <div class="row">
            <div class="col-md-6 offset-md-3" style="color:#808080;margin-top:20%;margin-left:25%;">
                <b>Oltranz</b> &emsp;  &emsp;  Copyright Ⓒ Dubai Visa 2021.</div>
        </div>
    </div>
</@layout.mainLayout>
