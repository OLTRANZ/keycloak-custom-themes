<#import "../resources/fonts/baselogo.png" as baselogo>
<html>
<body>  
    <div>
        ${kcSanitize(msg("emailVerificationBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
    </div>
</body>
</html>
