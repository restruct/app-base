# Restruct Silverstripe base/starter for new projects

## Project setup

0. Clone repo 
0. Remove `.git` directory
0. Remove `README.md`
0. Set DB credentials & various config etc in `.env`
0. Update project requirements and extra.expose in `composer.json`
0. Run `composer update`
0. Add favicon.ico in /public/

## System:
Most html sections are wrapped in a common structure:

```html
<section class="area-name-section">
    <div class="$ContainerClass"> <%-- .container equivalent/variant --%>
        <div class="outer"> <%-- .row equivalent --%>
            <div class="area-name typography"> <%-- .col equivalent --%>
                <div class="inner"> <%-- extra div for eg wells/boxes (while preserving column spacing) --%>
                    <p>(Actual content)</p>
                ...
```

## Notes:
- Default 'protected assets' folder is moved from /public/.protected/ to /restricted_assets/ (outside public webroot)
- Yarn unmet peer depencency warnings: https://stackoverflow.com/questions/46928390/#48767033

### Optional modules

*[silverstripe/mfa](https://github.com/silverstripe/silverstripe-mfa)*  
MultiFactor Authentication for SilverStripe (combine with TOTP authenticator module).

*[silverstripe/totp-authenticator](https://github.com/silverstripe/silverstripe-totp-authenticator)*  
Time-based One-Time Password (TOTP) authenticator that plugs in to the silverstripe/mfa module.

*[silverstripe/session-manager](https://github.com/silverstripe/silverstripe-session-manager)*  
Allow members to manage and revoke access to multiple login sessions across devices. (Note: causes db write on every request by logged in members).

*[silverstripe/versioned-admin](https://github.com/silverstripe/silverstripe-versioned-admin)*  
Adds admin interfaces for managing DataObjects that implement versioning (history tab & Archive Admin UI).

*[silverstripe/versioned-snapshot-admin](https://github.com/silverstripe/silverstripe-versioned-snapshot-admin)*  
Enhanced replacement for versioned-admin, adds snapshots to the history view (WARNING: experimental/unstable).


### TODO

Based on Bigfork’s quickstart recipe, adapt some more functionality:

- webpack image compression (adapt bigfork)
- Adapt parts of public/_deact_htaccess
- Deployer (deploy.php & deploy/ dir)

