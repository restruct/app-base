<nav class="navbar _navbar-light _bg-light navbar-dark bg-primary navbar-expand-lg sticky-top top-0 _fixed-top">
    <div class="$SiteConfig.ContainerClass">

        <a class="navbar-brand" href="$BaseHref">
<%--            <img src="$ThemeDir/dist/images/placeholder.svg" alt="" width="" height="24" class="d-inline-block align-text-top" />--%>
<%--            <img class="rounded d-inline-block align-text-top" src="$SiteConfig.ImagePlaceholder(32,26,'XY','',true)" alt="" width="" height="26">--%>
            <% if $SiteConfig.NavLogo %>
                <% with $SiteConfig.NavLogo %>
                    <% if $Extension=='svg' %><img src="$URL" alt="$Name" width="" height="26"><% else %>$FitMax(80,26)<% end_if %>
                <% end_with %>
            <% else_if $isDev %>
                <img class="rounded d-inline-block align-text-top" src="$SiteConfig.ImagePlaceholder(32,26,'XY','',true)" alt="" width="" height="26">
            <% end_if %>

            $SiteConfig.Title
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav me-auto">

                <%-- PLAIN SINGLE-LEVEL NAVBAR, eg with sidebar subnav --%>
                <% include  NavbarSingleLevel %>

                <%-- REGULAR BS TWO-LEVEL PLAIN DROPDOWN NAVBAR --%>
<%--                <% include NavbarWithDropdowns %>--%>

                <%-- ENHANCED BS TWO-LEVEL SPLIT-TOGGLE DROPDOWN NAVBAR --%>
<%--                <% include NavbarWithSplitDropdowns %>--%>

            </ul>

            <% if $SearchForm && not $IsSearchResults %><% include SiteSearchForm ExtraClass='d-flex' %><% end_if %>

        </div>

    </div>
</nav>
