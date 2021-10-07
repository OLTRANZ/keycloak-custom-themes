<#import "template.ftl" as layout>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("sessionsHtmlTitle")}</h2>
        </div>
    </div>
    <div style="padding-left:35%;margin-bottom:8%;">                
    </div>
    <table class="table table-striped table-bordered">
        <thead>
        <tr>
            <td>${msg("ip")}</td>
            <td>${msg("started")}</td>
            <td>${msg("lastAccess")}</td>
            <td>${msg("expires")}</td>
            <td>${msg("clients")}</td>
        </tr>
        </thead>

        <tbody>
        <#list sessions.sessions as session>
            <tr>
                <td>${session.ipAddress}</td>
                <td>${session.started?datetime}</td>
                <td>${session.lastAccess?datetime}</td>
                <td>${session.expires?datetime}</td>
                <td>
                    <#list session.clients as client>
                        ${client}<br/>
                    </#list>
                </td>
            </tr>
        </#list>
        </tbody>

    </table>

    <form action="${url.sessionsUrl}" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">
        <button id="logout-all-sessions" 
          style="width:30%;background-color:#4baaf5;color:white;border-radius:5px;
                            border:none; height:35px;font-weight:bold;"
                            class="btn btn-primary">${msg("doLogOutAllSessions")}</button>
    </form>
    <div class="row">
        <div class="col-md-6 offset-md-3" style="color:#808080;margin-top:50%;margin-left:28%;">
            <b>Oltranz</b> &emsp;  &emsp;  Copyright Ⓒ BaseSMS 2021.</div>
    </div>

</@layout.mainLayout>
