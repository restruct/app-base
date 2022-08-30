<% with $SiteConfig %>
<% if $Facebook || $Instagram || $Twitter || $Linkedin || $Youtube || $Whatsapp %>

    <% if $Facebook %>
        <a href="{$Facebook}" class="social-icon"><i class="bi bi-facebook"></i></a>
    <% end_if %>

    <% if $Instagram %>
        <a href="{$Instagram}" class="social-icon"><i class="bi bi-instagram"></i></a>
    <% end_if %>

    <% if $Twitter %>
        <a href="{$Twitter}" class="social-icon"><i class="bi bi-twitter"></i></a>
    <% end_if %>

    <% if $Linkedin %>
        <a href="{$Linkedin}" class="social-icon"><i class="bi bi-linkedin"></i></a>
    <% end_if %>

    <% if $Youtube %>
        <a href="{$Youtube}" class="social-icon"><i class="bi bi-youtube"></i></a>
    <% end_if %>

    <% if $Whatsapp %>
        <a href="{$Whatsapp}" class="social-icon"><i class="bi bi-whatsapp"></i></a>
    <% end_if %>

<% end_if %>
<% end_with %>
