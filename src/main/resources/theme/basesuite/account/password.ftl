<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>

    <div>
        <div class="row" style="background-color:white;
                                border-radius:10px;">
            <div class="col-md-10">
                <h2>${msg("changePasswordHtmlTitle")}</h2>
            </div>
            <div class="col-md-2 subtitle">
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
            <form action="${url.passwordUrl}" class="form-horizontal" style="border:none;" method="post">
                <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">

                <#if password.passwordSet>
                    <div class="form-group">
                        <div>
                            <input type="password" class="form-control"
                            style="height:35px;border-radius:5px;
                            background-color:#EEEEEE"
                            id="password" name="password" autofocus autocomplete="current-password" placeholder="Current password">
                        </div>
                    </div>
                </#if>

                <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

                <div class="form-group">
                    <div>
                        <input type="password" class="form-control"
                        style="height:35px;border-radius:5px;
                            background-color:#EEEEEE"
                            id="password-new" name="password-new" autocomplete="new-password" placeholder="New password">
                    </div>
                </div>

                <div class="form-group">
                    <div>
                        <input type="password" class="form-control" 
                        style="height:35px;border-radius:5px;
                            background-color:#EEEEEE"
                            id="password-confirm" name="password-confirm" autocomplete="new-password" placeholder="Confirm password">
                    </div>
                </div>

                <div>
                    <button type="submit"
                    style="width:100%;background-color:#4baaf5;color:white;border-radius:5px;
                            border:none; height:35px;font-weight:bold;"
                            class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
                </div>
                   
            </form>
        </div>
        <div class="row">
            <div class="col-md-6 offset-md-3" style="color:#808080;margin-top:20%;margin-left:25%;">
                <b>Oltranz</b> &emsp;  &emsp;  Copyright Ⓒ BaseSMS 2021.</div>
        </div>
    </div>
</@layout.mainLayout>
