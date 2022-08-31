<%-- NOTE: Regular & Blocks-based (aka Elemental) rendering structure:
SUBNAV, options: before, after, below
Basically 'before' & 'after' are column subnavs, they precede/follow the content area/.blocks-container (which becomes smaller)
'below' instead wraps the subnav in its own 'block', leaving the preceding blocks basically full width
--%>
<% if $Parent.ID %>
<div class="breadcrumbs-wrapper">
    <div class="$SiteConfig.ContainerClass">
        <div class="row">
            <nav class="col">$BreadCrumbs</nav>
        </div>
    </div>
</div>
<% end_if %>

<div class="blocks-container subnav-slot-$SiteConfig.ThemeSubNavSlot <% if $ElementalAreaID %>blocks-count-{$ElementalArea.Elements.count}<% else %>no-blocks-module<% end_if %>">

    <% if $SiteConfig.ThemeSubNavSlot=='before' || $SiteConfig.ThemeSubNavSlot=='after' %>
    <%-- TWO COLUMN LAYOUT (NAV & CONTENT) --%>

        <div class="<% if $ElementalAreaID %><% include BlockHolderClasses %><% end_if %>">
            <div class="block-item-wrapper">
                <div class="$SiteConfig.ContainerClass">
                    <div class="row">

                        <aside class="col-md-4 col-lg-3 <% if $SiteConfig.ThemeSubNavSlot=='after' %>order-last<% end_if %>">

                            <% include SubNav %>

                        </aside>
                        <div class="col-md-8 col-lg-9 typography">

                            <h1>{$Title}</h1>
                            <% if not $ContentBlocksToggle || $ContentBlocksToggle=='content' || $ContentBlocksToggle=='content_blocks' %>
                            {$Content}
                            <% end_if %>
                            {$Form}

                            <%--
                            Append a few legacy content items
                            --%>
                            <% if $ClassName.ShortName=='SitemapPage' %>
                            <% include Restruct\AppBase\Includes\SitemapPageList Items=$Menu(1), TopLevel=1 %>
                            <% end_if %>

                            <%-- ACTUAL BLOCKS --%>
                            <% if not $ContentBlocksToggle || $ContentBlocksToggle=='content_blocks' || $ContentBlocksToggle=='blocks' %>
                            {$ElementalArea}
                            <% end_if %>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    <% else %>
    <%-- FULLWIDTH/STACKED BLOCKS LAYOUT --%>

        <div class="<% if $ElementalAreaID %><% include BlockHolderClasses %><% end_if %>">
            <div class="block-item-wrapper">
                <div class="$SiteConfig.ContainerClass">
                    <div class="row">
                        <div class="col typography">

                            <h1>{$Title}</h1>
                            <% if not $ContentBlocksToggle || $ContentBlocksToggle=='content' || $ContentBlocksToggle=='content_blocks' %>
                            {$Content}
                            <% end_if %>
                            {$Form}

                            <%--
                            Append a few legacy content items
                            --%>
                            <% if $ClassName.ShortName=='SitemapPage' %>
                            <% include Restruct\AppBase\Includes\SitemapPageList Items=$Menu(1), TopLevel=1 %>
                            <% end_if %>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--
        Option: append content items as pseudo-blocks if they're not available as actual blocks
        --%>
<%--        <% if $ClassName.ShortName=='SitemapPage' %>--%>
<%--            <div class="<% if $ElementalAreaID %><% include BlockHolderClasses %><% end_if %> sitemap-block">--%>
<%--                <div class="block-item-wrapper">--%>
<%--                    <div class="$SiteConfig.ContainerClass">--%>
<%--                        <div class="row">--%>
<%--                            <div class="col typography">--%>
<%--                                <% include Restruct\AppBase\Includes\SitemapPageList Items=$Menu(1), TopLevel=1 %>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        <% end_if %>--%>


        <%-- ACTUAL BLOCKS --%>
        <% if $ContentBlocksToggle=='content_blocks' || $ContentBlocksToggle=='blocks' %>
        {$ElementalArea}
        <% end_if %>


        <%-- SUBNAV BELOW --%>
        <% if $SiteConfig.ThemeSubNavSlot=='below' %>
            <div class="<% if $ElementalAreaID %><% include BlockHolderClasses %><% end_if %> subnav-block">
                <div class="block-item-wrapper">
                    <div class="$SiteConfig.ContainerClass">
                        <div class="row">
                            <div class="col typography">
                                <% include SubNav %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <% end_if %>

    <% end_if %>


</div>









    <%-- nav as pseudo block --%>
<%--    <div class="blocks-container _typography">--%>
<%--        <% include NavBlockInPage %>--%>
<%--    </div>--%>

<%--    <% include SideNav %>--%>


<%--    <div class="blocks-container _typography">--%>

<%--    <% if $LayoutBlocks %>--%>
<%--    <% cached 'Layout/Page/ElementalArea', $ID, $LastEdited, $ElementalArea.Elements.max('LastEdited') %>--%>
<%--    {$ElementalArea}--%>
<%--    <% end_cached %>--%>
<%--    {$Form}--%>
<%--    <% end_if %>--%>


    <%--
    Non-updated pages: just include regular content as if in a content block
    --%>
<%--    <% if $LayoutContent && $Content %>--%>
<%--        <% include PseudoBlockWrapper Part='open' %>--%>
<%--            {$Content}--%>
<%--            {$Form}--%>
<%--        <% include PseudoBlockWrapper Part='close' %>--%>
<%--    </div>--%>
<%--    <% end_if %>--%>

