<%-- REGULAR BS TWO-LEVEL PLAIN DROPDOWN NAVBAR (items toggling dropdowns cannot be clicked to navigate, repeat them in the dropdown) --%>
<% loop $Top.Menu(1) %>
    <li class="nav-item <% if $Children %>dropdown<% end_if %> <% if $isCurrent || $isSection %>active<% end_if %> ">
        <a href="$Link" class="nav-link <% if $isCurrent || $isSection %>active<% end_if %>
                    <% if $isCurrent || $isSection %>active<% end_if %>
                    <% if $Children %>dropdown-toggle<% end_if %>
                " <% if $isCurrent %>aria-current="page"<% end_if %>
                <% if $Children %>id="nav_drd_{$ID}" role="button" data-bs-toggle="dropdown" aria-expanded="false"<% end_if %>
            >
            $MenuTitle
        </a>
        <ul class="dropdown-menu dropdown-menu-dark bg-primary" aria-labelledby="nav_drd_{$ID}">
            <% loop $Children %>
            <li>
                <a class="dropdown-item <% if $isCurrent %>active<% end_if %>" <% if $isCurrent %>aria-current="page"<% end_if %> href="$Link">
                    Action
                </a>
            </li>
            <% end_loop %>
        </ul>
    </li>
<% end_loop %>
