<%-- ENHANCED BS TWO-LEVEL SPLIT-TOGGLE DROPDOWN NAVBAR (split link-items & dropdown toggles) --%>
<% loop $Top.Menu(1) %>
    <li class="nav-item <% if $Children %>dropdown<% end_if %> <% if $isCurrent || $isSection %>active<% end_if %> ">
        <div class="nav-link">
            <a href="$Link" class="nav-link-within-dropdown <% if $isCurrent || $isSection %>active<% end_if %>"
                    <% if $isCurrent %>aria-current="page"<% end_if %>
                >
                $MenuTitle
            </a>
            <% if $Children %>
            <a href="#" class="nav-link-within-dropdown dropdown-toggle <% if $isCurrent || $isSection %>start-open<% end_if %>"
                    id="nav_drd_{$ID}" data-bs-toggle="dropdown" data-bs-reference="parent" data-bs-auto-close="false"
                    aria-expanded="<% if $isCurrent || $isSection %>true<% else %>false<% end_if %>" >
                <span class="visually-hidden">Toggle Dropdown</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-dark bg-primary" aria-labelledby="nav_drd_{$ID}">
                <% loop $Children %>
                <li>
                    <a href="$Link" class="dropdown-item <% if $isCurrent %>active<% end_if %>" <% if $isCurrent %>aria-current="page"<% end_if %>>
                        $MenuTitle
                    </a>
                </li>
                <% end_loop %>
            </ul>
            <% end_if %>
        </div>
    </li>
<% end_loop %>
