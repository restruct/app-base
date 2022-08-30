<% if $PaginatedItems.MoreThanOnePage %>
    <ul class="pagination $ExtraClass">
        <% if $PaginatedItems.NotFirstPage %>
            <li class="page-item"><a class="page-link" href="$PaginatedItems.PrevLink">&lt;</a></li>
        <% else %>
            <li class="page-item disabled"><a class="page-link" href="#">&lt;</a></li>
        <% end_if %>
        <% loop $PaginatedItems.PaginationSummary(4) %>
            <% if $CurrentBool %>
                <li class="page-item active"><a class="page-link" href="#">$PageNum</a></li>
            <% else %>
                <% if $Link %>
                    <li class="page-item"><a class="page-link" href="$Link">$PageNum</a></li>
                <% else %>
                    <li class="page-item disabled"><a class="page-link" href="javascript:void(0)">...</a></li>
                <% end_if %>
            <% end_if %>
        <% end_loop %>
        <% if $PaginatedItems.NotLastPage %>
            <li class="page-item"><a class="page-link" href="$PaginatedItems.NextLink">&gt;</a></li>
        <% else %>
            <li class="page-item disabled"><a class="page-link" href="#">&gt;</a></li>
        <% end_if %>
    </ul>
<% end_if %>