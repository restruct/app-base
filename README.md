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

### TODO

Based on Bigfork’s quickstart recipe, adapt some more functionality:

- webpack image compression (adapt bigfork)
- Adapt parts of public/_deact_htaccess
- Deployer (deploy.php & deploy/ dir)

