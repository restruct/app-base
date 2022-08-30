<!DOCTYPE html>
<html lang="{$ContentLocale}">
<head>
    <% base_tag %>

    $SiteConfig.ExtraHTML_HeadStart.RAW

    <% include MetaTags %>

    <%-- NOTE: Requirements set from PageController::init (uncomment below if setting from templates is prefered) --%>
    <%--
    <% require themedCSS('dist/css/main') %>
    <% require css("themes/base-theme/dist/css/main.css") %>
    <% require javascript("themes/base-theme/dist/js/manifest.js") %>
    <% require javascript("themes/base-theme/dist/js/vendor.js") %>
    <% require javascript("themes/base-theme/dist/js/main.js") %>
    --%>

    $SiteConfig.ExtraHTML_HeadEnd.RAW

</head>
<body class="class_{$ClassName.ShortName} action_{$Action} $ExtraClasses no-js" data-pid="$PageID_MD5">

    $SiteConfig.ExtraHTML_BodyStart.RAW

    <% include HeaderTop %>

    <% include HeaderNav %>

    <%-- Content 'sectioning' - https://developer.mozilla.org/en-US/docs/Web/HTML/Element
    <section> generic area without a more appropriate tag (eg search results or a map + controls)
    <main> dominant content area of a document (id as target for skip navigation link)
    <article> standalone atomic content which would be individually distributable (eg blog post/comment or a newspaper article)
    <aside> alongside main content but not directly part of it (eg related links/author bio)
    <div> simple styling wrapper (<section> should logically appear in the outline of a document)
    <header> introductory content, typically a group of introductory or navigational aids
    <footer> footer for nearest ancestor section or root element (eg author, copyright or links to related content)
    --%>
    <main id="main" class="main class_{$ClassName.ShortName} action_{$Action} $ExtraClasses">

        <%--
        Leave further rendering up to specific Layout/(Page etc) templates
        --%>
        {$Layout}

    </main>

    <% include Footer %>

    $CookieBar

    $SiteConfig.ExtraHTML_BodyEnd.RAW

</body>
</html>
