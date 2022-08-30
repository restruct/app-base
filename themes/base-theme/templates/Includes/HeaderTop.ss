<header class="header-top">
    <div class="$SiteConfig.ContainerClass">
        <div class="row">
            <div class="col logos d-flex justify-content-between pt-2 pb-2">
                <div class="logo-left">
                    <a href="$BaseHref">
                        <% if $SiteConfig.Logo %>
                            <% with $SiteConfig.Logo %>
                                <% if $Extension=='svg' %><img src="$URL" alt="$Name" width="" height="50"><% else %>$ScaleMaxHeight(50)<% end_if %>
                            <% end_with %>
                        <% else_if $isDev %>
                            <img class="rounded" src="$SiteConfig.ImagePlaceholder(240,50,'logo left','',true)" alt="" width="" height="50">
                        <% end_if %>
                    </a>
                </div>
                <div class="logo-right">
                    <% if $SiteConfig.ExtraLogo %>
                        <% with $SiteConfig.ExtraLogo %>
                            <% if $Extension=='svg' %><img src="$URL" alt="$Name" width="" height="50"><% else %>$ScaleMaxHeight(50)<% end_if %>
                        <% end_with %>
                    <% else_if $isDev %>
                        <img class="rounded" src="$SiteConfig.ImagePlaceholder(240,50,'logo right','',true)" alt="" width="" height="50">
                    <% end_if %>
                </div>
            </div>
        </div>
    </div>
</header>
