<footer class="footer">

    <%-- dedicated social icons row --%>
<%--    <section class="footer-social-section">--%>
<%--        <div class="$ContainerClass">--%>
<%--            <div class="row">--%>
<%--                <div class="col footer-social">--%>
<%--                    <div class="inner typography">--%>
<%--                        <% include  SocialMediaLinks %>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </section>--%>

    <section class="footer-content-section">
        <div class="$SiteConfig.ContainerClass">
            <div class="row">
                <div class="col footer-content">
                    <div class="inner typography">

                        <table>
                            <tr>
                                <% loop $Menu(1) %>
                                <td>
                                    <a href="$Link">$MenuTitle</a><br>
                                    <% loop $Children %>
                                    <a href="$Link">$MenuTitle</a><br>
                                    <% end_loop %>
                                </td>
                                <% end_loop %>

                                <td>
                                    <% with $SiteConfig %>
                                    <% if $Address %>$Address<br><% end_if %>
                                    <% if $Address && $Phone || $Address && $Email %><br><% end_if %>
                                    <% if $Phone %><a href="tel://$Phone.ATT">$Phone</a><br><% end_if %>
                                    <% if $Email %><a href="mailto:$Email.ATT">$Email</a><br><% end_if %>
                                    <% end_with %>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="footer-below-section">
        <div class="$SiteConfig.ContainerClass">
            <div class="row">
                <div class="col-sm footer-below-credits text-center text-sm-start order-last order-sm-first">
                    <div class="inner typography">
                        <a class="logo-footer me-2 text-decoration-none" href="$AbsoluteBaseURL" >
                        <% if $SiteConfig.FooterLogo %>
                            <% with $SiteConfig.FooterLogo %>
                                <% if $Extension=='svg' %><img src="$URL" alt="$Name" width="" height="50"><% else %>$ScaleMaxHeight(50)<% end_if %>
                            <% end_with %>
                        <% else_if $isDev %>
                            <img class="rounded" src="$SiteConfig.ImagePlaceholder(80,50,'logo','',true)" alt="" width="" height="50">
                        <% end_if %>
                        </a>
                        &copy; {$SiteConfig.Title} {$Now.Year}
                    </div>
                </div>
                <div class="col-sm footer-below-social text-center text-sm-end order-first order-sm-last my-4 my-sm-0">
                    <div class="inner typography">
                        <% include  SocialMediaLinks %>
                    </div>
                </div>

            </div>
        </div>
    </section>

</footer>

<%--<section class="flexbox-test">--%>
<%--    <div class="flexbox-item item-1">Multiple<br>row<br>item 1</div>--%>
<%--    <div class="flexbox-item item-2">Item 2</div>--%>
<%--    <div class="flexbox-item item-3">Item 3</div>--%>
<%--    <div class="flexbox-item item-4">Item 4</div>--%>
<%--    <div class="flexbox-item item-5">Item 5</div>--%>
<%--</section>--%>

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
  </symbol>
  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>
</svg>
