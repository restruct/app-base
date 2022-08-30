<%-- PLAIN SINGLE-LEVEL NAVBAR, eg with sidebar subnav --%>
<% loop $Top.Menu(1) %>
    <li class="nav-item <% if $isCurrent || $isSection %>active<% end_if %> ">
        <a href="$Link" class="nav-link <% if $isCurrent || $isSection %>active<% end_if %> <% if $isCurrent || $isSection %>active<% end_if %>"
                <% if $isCurrent %>aria-current="page"<% end_if %>>
            $MenuTitle
        </a>
    </li>
<% end_loop %>
