<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>

<!-- login form -->
			
	<div id="stylized" class="myform">
		<form id="form" name="form" method="post" action="query">
			<p>Please log in</p>
			
			<input type="text" size="50" name="username" id="username" />
			<input type="password" size="50" name="password" id="password" />
			<input name="action" type="hidden" value="login" />
			
			<button type="submit">Login</button>
			<div class="spacer"></div>
		</form>
	</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>