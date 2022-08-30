<% with $SiteConfig %>
<script type="text/x-template" id="cookiebar-template" data-legacyid="cookiebarholder">
	<div id="cookiebar">
		<div class="container">
			<div class="description typography">
				<% if $CookieImage %>
					$CookieImage.SetHeight(80)
				<% end_if %>

				<p class="notification">$CookieBarTitle
					<a href="$CookiePage.Link" class="more">$CookieMoreText</a>
				</p>

				<div class="explanation">
				   $CookieBarContent
				</div>
			</div>
			<div class="links">
				<a data-purpose="acceptcookies" class="acceptcookies btn btn-success" href="$Top.AcceptCookiesLink">
					<i class="bi bi-check-lg"></i>
					{$CookieCloseText}
				</a>
				<% if $CookiePage %>
					<a href="$CookiePage.Link" class="infolink text-muted">
					<i class="bi bi-info-circle"></i>
						 $CookieMoreText
					</a>
				<% end_if %>
			</div>
			<div class="clear"><!-- --></div>
		</div>
	</div>
</script>
<% end_with %>

