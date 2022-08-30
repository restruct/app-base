<ul <% if $TopLevel %>class="sitemap"<% end_if %>>
	<% loop $Items %>
		<li>
			<a href="{$Link}">{$MenuTitle}</a>
			<% if $Children %>
				<% include Restruct\AppBase\Includes\SitemapPageList Items=$Children %>
			<% end_if %>
		</li>
	<% end_loop %>
</ul>
