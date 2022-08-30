
    <% if $Children %>
        <ul class="level_">
            <% loop $Children %>
                <li class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
                    <a href="$Link" class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">$MenuTitle</a>

                    <% include  SubNavChildren %>
                </li>
            <% end_loop %>
        </ul>
    <% end_if %>

