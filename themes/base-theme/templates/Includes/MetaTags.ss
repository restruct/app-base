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

<%-- @TODO: opengraph --%>
<%--
<meta property="og:title" content="<% if $MetaTitle %>{$MetaTitle.XML}<% else %>{$Title.XML} | {$SiteConfig.Title}<% end_if %>" />
<meta property="og:type" content="website" />
<meta property="og:image" content="{$AbsoluteBaseURL}<% if $Extension=='svg' %>$URL<% else %>$FillMax(144,144).URL<% end_if %>" />
<meta property="og:url" content="{$AbsoluteLink}" />
<meta property="og:description" content="<% if $MetaDescription %>{$MetaDescription}<% else %>{$SiteConfig.Tagline}<% end_if %>" />
<meta property="og:site_name" content="{$SiteConfig.Title}" />
<meta property="og:locale" content="{$ContentLocale}" />

<meta name="twitter:title" content="<% if $MetaTitle %>{$MetaTitle.XML}<% else %>{$Title.XML} | {$SiteConfig.Title}<% end_if %>" />
<meta name="twitter:description" content="<% if $MetaDescription %>{$MetaDescription}<% else %>{$SiteConfig.Tagline}<% end_if %>" />



<meta name="apple-mobile-web-app-title" content="funda">
<meta name="application-name" content="funda">
<meta name="msapplication-config" content="https://assets.fstatic.nl/master_3930/assets/browserconfig.xml">

<meta property="og:site_name" content="funda">
<meta property="og:url" content="https://www.funda.nl/koop/verkocht/leiden/huis-42797899-lijsterstraat-1/">
<meta property="og:type" content="article">
<meta property="og:title" content="Verkocht: Lijsterstraat 1 2333 XV Leiden [funda]">
<meta property="og:description" content="Lijsterstraat 1 , Leiden
Wonen in de zeer geliefde Vogelwijk in mooie groene omgeving. Op deze mooie plek ligt deze 6 kamer hoekwoning met zeer riante voor- en achtertuin (circa 15 meter!), waar je de gehele dag kunt genieten van de zon en rust. ">
<meta property="og:image" content="https://cloud.funda.nl/valentina_media/157/965/644_1440.jpg">
<meta property="og:image:width" content="1440">
<meta property="og:image:height" content="960">

<meta property="twitter:site" content="@funda">
<meta property="twitter:card" content="summary_large_image">

<meta itemprop="url" content="https://www.funda.nl/koop/verkocht/leiden/huis-42797899-lijsterstraat-1/">
<meta itemprop="name" content="Verkocht: Lijsterstraat 1 2333 XV Leiden [funda]">
<meta itemprop="description" content="Lijsterstraat 1 , Leiden
Wonen in de zeer geliefde Vogelwijk in mooie groene omgeving. Op deze mooie plek ligt deze 6 kamer hoekwoning met zeer riante voor- en achtertuin (circa 15 meter!), waar je de gehele dag kunt genieten van de zon en rust. ">
<meta itemprop="image" content="https://cloud.funda.nl/valentina_media/157/965/644_1440.jpg">
--%>
