<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>
<div class="">
    <div class="card" style="background: #fff; margin-top:-20%">
    <div class="row card-title-custom">
        <div class="col-md-9">
            <h2>${msg("editAccountHtmlTitle")}</h2>
        </div>
        <div class="col-md-3 subtitle">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
        </div>
    </div>

    <form action="${url.accountUrl}" class="form-horizontal" method="post">

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <#if !realm.registrationEmailAsUsername>
            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <div class="col-sm-2 col-md-2">
                    <label for="username" class="control-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                </div>
            </div>
        </#if>

        <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
            <div class="col-sm-2 col-md-2">
            <label for="email" class="control-label">${msg("email")}</label> <span class="required">*</span>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="text" class="form-control" id="email" name="email" autofocus value="${(account.email!'')}"/>
            </div>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">
            <div class="col-sm-2 col-md-2">
                <label for="firstName" class="control-label">${msg("firstName")}</label> <span class="required">*</span>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="text" class="form-control" id="firstName" name="firstName" value="${(account.firstName!'')}"/>
            </div>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">
            <div class="col-sm-2 col-md-2">
                <label for="lastName" class="control-label">${msg("lastName")}</label> <span class="required">*</span>
            </div>

            <div class="col-sm-10 col-md-10">
                <input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')}"/>
            </div>
        </div>

        <div class="form-group">
            <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">
                <div class="">
                    <#if url.referrerURI??><a href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} col-sm-5 col-md-5 col-5" name="submitAction" value="Save">${msg("doSave")}</button>
                    <div class="col-sm-2 col-md-2 col-2"></div>
                    <button type="submit" class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!} col-sm-5 col-md-5 col-5" name="submitAction" value="Cancel" style="background-color: #C93F21">${msg("doCancel")}</button>
                </div>
            </div>
        </div>
    </form>
    </div>
    <div class="card" style="background: #fff; margin-top:2%">
    <div class="row card-title-custom">
        <div class="col-md-12">
            <h2>${msg("editAvatarHtmlTitle")}</h2>
        </div>
        <#--  <div class="col-md-3 subtitle">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
        </div>  -->
    </div>

    <form action="${url.accountUrl}" class="form-horizontal" method="post">

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <#if !realm.registrationEmailAsUsername>
            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <div class="col-sm-2 col-md-2">
                    <label for="username" class="control-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                </div>

                <div class="col-sm-10 col-md-10">
                    <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
                </div>
            </div>
        </#if>

        <div class="form-group">
            <div id="kc-form-buttons" class="col-md-12 submit">
                <div class="panel panel-default col-sm-8 col-md-8 col-8">
                    <div class="panel-body text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" class="img-circle profile-avatar" alt="User avatar" style="width: 150px;">
                    </div>
                </div>
                <div style="height: 200px;
                            align-items: center;
                            display: flex;padding:10px">
                   <div class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} col-sm-5 col-md-5 col-5 file-input">
                   <span>Upload</span>
                    <input type="file" name="submitAction" value="Save" />
                   </div>
                    <div class="col-sm-2 col-md-2 col-2"></div>
                    <div class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} col-sm-5 col-md-5 col-5 file-input">
                   <span>${msg("doSave")}</span>
                    <input type="file" name="submitAction" value="Save" />
                   </div>
                    </div>
                </div>
            </div>

                </div>
            </div>
        </div>
    </form>
    </div>
</div>

</@layout.mainLayout>
