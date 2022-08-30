<form action="{$BaseHref}search" class="site-search-form $ExtraClass">
<%--    <input class="search-box" type="text" name="Search" placeholder="Zoeken..."/>--%>
<%--    <input type="submit" name="action_results" value="Zoeken" class="action">--%>
    <div class="input-group">
        <input class="search-box form-control" type="text" name="Search" placeholder="Zoeken..." value="$SearchForm.Fields.first.Value.ATT">
        <button type="submit" class="form-submit-btn input-group-text">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
        </button>
    </div>
</form>

