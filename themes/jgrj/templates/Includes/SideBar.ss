<aside class="col-lg-4 col-xl-3 offset-xl-1" role="complementary">
	<% if Menu(2) %>
		<nav class="sidenav mt-5">
			<% if Menu(2) %>
				<% with Level(1) %>
					<h3 class="sidenav__title">
						<% if $LinkOrCurrent = "current" %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %>
					</h3>
				<% end_with %>
			<% end_if %>
			<ul class="sidenav__list">
				<% loop Menu(2) %>
					<li class="$LinkingMode">
						<a href="$Link" class="sidenav__link sidenav__link--$LinkingMode">$MenuTitle</a>

						<%-- second level nav --%>
						<% if $LinkOrSection = "section" && Children %>
							<ul class="sidenav__list sidenav__list--sub">
								<% loop Children %>
									<li class="">
										<a href="$Link" class="sidenav__link sidenav__link--sub">$MenuTitle</a>
									</li>
								<% end_loop %>
							</ul>
						<% end_if %>
						<%-- end second level --%>

					</li>
				<% end_loop %>

			</ul>
		</nav>
	<% end_if %>
</aside>