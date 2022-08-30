<div class="blocks-container">

    <% include PseudoBlockWrapper Part='open' %>

<%--    <h1 class="title">Resultaten<% if $SearchQuery %> voor ‘{$SearchQuery.XML}’<% end_if %></h1>--%>
    <%-- $logSearchAction //for 404/searchquery report --%>

    <% include SiteSearchForm %>

    <% if $SearchResults %>
    <p class="text-muted d-flex align-items-center">
<%--        <svg class="bi flex-shrink-0 me-2" width="16" height="16" role="img" aria-label="Info:"><use xlink:href="#check-circle-fill"/></svg>--%>
        {$SearchResults.count} resulta<% if $SearchResults.count==1 %>at<% else %>ten<% end_if %> gevonden<% if $SearchQuery %> voor ‘{$SearchQuery.XML}’<% end_if %>
    </p>
    <% end_if %>

    <div class="searchresults-holder">
        <% if $SearchResults %>
            <% loop $SearchResults %>
                <div class="searchresult">
                    <a href="$Link" class="searchresult-link">
                        <span class="searchresult-url">$AbsoluteLink</span>
                        <span class="searchresult-title"><% if $MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></span>
                    </a>
                    <div class="searchresult-contextsummary">
                        $Content.ContextSummary
                        <a class="searchresult-readmorelink" href="$Link" title="Open &quot;{$Title}&quot;">
                            <%--&rarr;--%>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
                              <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
                            </svg>
                        </a>
                    </div>
                </div>
            <% end_loop %>
        <% else %>
            <div class="searchresult alert alert-warning d-flex align-items-center">
                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Info:"><use xlink:href="#info-fill"/></svg>
                Sorry, geen resultaten gevonden<% if $SearchQuery %> voor ‘{$SearchQuery.XML}’<% end_if %>.
            </div>
        <% end_if %>
    </div>

<%--    <% include FilterableArchiveBootstrapPagination PaginatedItems=$Results %>--%>

    <% include PseudoBlockWrapper Part='close' %>

</div>
