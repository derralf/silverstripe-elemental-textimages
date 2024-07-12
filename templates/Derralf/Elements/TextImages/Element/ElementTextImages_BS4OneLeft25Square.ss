
<% if $SortedImages %>
    <div class="row">
        <div class="col-sm-8 col-md-9 mb-3 order-sm-last">
            <% if $ShowTitle %>
                <% include Derralf\\Elements\\TextImages\\Title %>
            <% end_if %>

            <% if $HTML %>
                <div class="element__content">$HTML</div>
            <% end_if %>

            <% if $ReadMoreLink.LinkURL %>
                <div class="element__readmorelink"><p><a href="$ReadMoreLink.LinkURL" class="{$ReadmoreLinkClass}" {$ReadMoreLink.TargetAttr} ><% if $ReadMoreLink.Title %>$ReadMoreLink.Title<% else %> mehr<% end_if %></a></p></div>
            <% end_if %>
        </div>
        <div class="col-sm-4 col-md-3 order-sm-first mb-3 image-wrap image-wrap-left">
            <% with $SortedImages.First %>
                <div class="image-aside">
                    <a href="$Me.URL" class="lightbox" data-sub-html="$Legend.ATT" data-exthumbimage="$Me.Fill(96,76).Link">
                        <img class="img-fluid"
                             src="$Me.FocusFill(550,550).Link"
                             alt="$Me.AltText.ATT"
                             title="$Me.TitleTag.ATT">
                        <% if $Top.OtherImages && $Top.ImageViewMode == "HiddenGallery" %>
                            <div class="more-images btn btn-primary btn-sm"><i class="fa fa-camera" aria-hidden="true"></i> +{$Top.OtherImages.Count}</div>
                        <% end_if %>
                    </a>
                    <% if $Top.ShowImageCaptions && $Me.Legend %><div class="image-caption">$Me.Legend.XML</div><% end_if %>
                </div>
            <% end_with %>
        </div>
    </div>
<% else %>
    <% if $ShowTitle %>
        <% include Derralf\\Elements\\ElementTitleStyled %>
    <% end_if %>

    <% if $HTML %>
        <div class="element__content">$HTML</div>
    <% end_if %>

    <%-- sheadawson/silverstripe-linkable --%>
    <% if $ReadMoreLink.LinkURL %>
        <div class="element__readmorelink"><p><a href="$ReadMoreLink.LinkURL" class="{$ReadmoreLinkClass}" {$ReadMoreLink.TargetAttr} ><% if $ReadMoreLink.Title %>$ReadMoreLink.Title<% else %> mehr<% end_if %></a></p></div>
    <% end_if %>
<% end_if %>

$OtherImagesLayout(1)
