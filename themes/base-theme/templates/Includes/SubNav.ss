<nav class="subnav slot-$SiteConfig.ThemeSubNavSlot">
    <ul class="subnav-list">
        <li>
            <% with $Level(1) %>
            <a href="$Link" title="$Title" class="section-link d-block h5 text-primary <% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
                $MenuTitle
            </a>
            <% end_with %>
        </li>
        <% loop $Menu(2) %>
            <li>
                <a href="$Link" title="$Title" class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
                    $MenuTitle
                </a>
                <% if $isSection %>
                <% include SubNavChildren %>
                <% end_if %>
            </li>
        <% end_loop %>
        <li></li>
    </ul>
</nav>
