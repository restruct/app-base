<meta charset="utf-8">
<title><% if $MetaTitle %>$MetaTitle.XML<% else %>$Title.XML<% end_if %> | $SiteConfig.Title.XML</title>

$MetaTags(false)

<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />--%>

<meta http-equiv="Content-Language" content="{$ContentLocale}"/>
<% if $URLSegment=='Security' %><meta name="robots" content="noindex"><% end_if %>

<% if $SiteConfig.BrowserColorTheme %>
<meta name="theme-color" content="$SiteConfig.BrowserColorTheme"><%-- Mobile browser colors: Chrome, Firefox OS and Opera --%>
<meta name="msapplication-navbutton-color" content="$SiteConfig.BrowserColorTheme"><%-- Mobile browser colors: Windows Phone --%>
<meta name="apple-mobile-web-app-status-bar-style" content="$SiteConfig.BrowserColorTheme"><%-- Mobile browser colors: iOS Safari --%>
<% end_if %>

<link rel="alternate" href="$AbsoluteLink" hreflang="$ContentLocale" />

<% if $SiteConfig.FavIcon %>
<% with $SiteConfig.FavIcon %>
    <% if $Extension=='svg' %>
        <link rel="shortcut icon" href="{$AbsoluteBaseURL}$URL">
        <link rel="image_src" href="{$AbsoluteBaseURL}$URL">
        <link rel="apple-touch-icon" href="{$AbsoluteBaseURL}$URL">
    <% else %>
        <link rel="icon" href="{$AbsoluteBaseURL}{$FillMax(32,32).URL}" sizes="32x32">
        <link rel="icon" href="{$AbsoluteBaseURL}{$FillMax(64,64).URL}" sizes="64x64">
        <link rel="icon" href="{$AbsoluteBaseURL}{$FillMax(180,180).URL}" sizes="180x180">
        <link rel="icon" href="{$AbsoluteBaseURL}{$FillMax(192,192).URL}" sizes="192x192">
        <link rel="image_src" href="{$AbsoluteBaseURL}{$FillMax(800,800).URL}">
        <%-- Android --%>
        <link rel="shortcut icon" href="{$AbsoluteBaseURL}{$FillMax(196,196).URL}" sizes="196x196">
        <%-- iOS --%>
        <link rel="apple-touch-icon" href="{$AbsoluteBaseURL}{$FillMax(120,120).URL}" sizes="120x120">
        <link rel="apple-touch-icon" href="{$AbsoluteBaseURL}{$FillMax(152,152).URL}" sizes="152x152">
        <link rel="apple-touch-icon" href="{$AbsoluteBaseURL}{$FillMax(180,180).URL}" sizes="180x180">
    <% end_if %>
<% end_with %>
<% end_if %>

<%-- SEO STUFF @TODO: replace with updated LiveSEO module --%>
<link rel="canonical" href="<% if $CanonicalPageID %>$CanonicalPage.AbsoluteLink<% else %>$AbsoluteLink<% end_if %>" />
<meta property="og:locale" content="$ContentLocale"/>
<meta property="og:type" content="website"/>
<meta property="og:title" content="<% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %>" />
<meta property="og:description" content="$MetaDescription" />
<meta property="og:url" content="$AbsoluteLink"/>
<meta property="og:site_name" content="$SiteConfig.Title - $SiteConfig.Tagline"/>
<meta property="article:published_time" content="$Created.Rfc3339" />
<meta property="article:modified_time" content="$LastEdited.Rfc3339" />

