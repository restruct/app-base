<div class="block-item-wrapper" <% if $BackgroundImage %>style="background-image: url('$BackgroundImage.URL')"<% end_if %>>
    <div class="$SiteConfig.ContainerClass">
        <div class="row">

            <% if $StyleVariant=="two-cols-img-txt" || $StyleVariant=="two-cols-txt-img" %>

                <div class="col-lg-4 typography <% if $StyleVariant=="two-cols-txt-img" %>order-2<% end_if %>">
                    <% if $FieldEnabled('Image') %>$Image<% end_if %>
                </div>
                <div class="col-lg-8 typography">
                    <% if $FieldEnabled('Heading') && $Heading %><h2>{$Heading}</h2><% end_if %>
                    <% if $FieldEnabled('IntroLine') && $IntroLine %><p class="lead">{$IntroLine}</p><% end_if %>
                    <% if $FieldEnabled('Content') && $Content %>$Content<% end_if %>
                </div>

            <% else %>

                <div class="col typography <% if $StyleVariant="single-col-narrow" %>col-md-6 offset-md-3<% end_if %>">
                    <% if $FieldEnabled('Image') %>$Image<% end_if %>
                    <% if $FieldEnabled('Heading') && $Heading %><h2>{$Heading}</h2><% end_if %>
                    <% if $FieldEnabled('IntroLine') && $IntroLine %><p class="lead">{$IntroLine}</p><% end_if %>
                    <% if $FieldEnabled('Content') && $Content %>$Content<% end_if %>
                </div>

            <% end_if %>

        </div>
    </div>
</div>
