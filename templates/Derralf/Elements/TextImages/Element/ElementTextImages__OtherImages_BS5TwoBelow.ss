    <%--<p><code>TwoBelow</code></p>--%>
	<div class="image-wrap image-wrap-below">
		<div class="row">
			<% loop $Me.Limit(2) %>
			<div class="col-6 col-xs-6 image-below">
				<a href="$Me.URL" class="lightbox" data-sub-html="$Legend.ATT" data-exthumbimage="$Me.Fill(96,76).Link">
                    <%-- 3:2 = 720x480 --%>
                    <img width="720" height="480" class="img-fluid" src="$Me.FocusFill(720,480).URL" alt="$AltText.ATT" title="$TitleTag.ATT">
                </a>
                <% if $Me.ShowImageCaptions && $Me.Legend %><div class="image-caption">$Me.Legend.XML</div><% end_if %>
			</div>
			<% end_loop %>
		</div>
	</div>
