<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>

<%
response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", -1);
%>

<!-- login form -->
			
<div id="content">
	<div id="stylized" class="myform">	
		<h3>Please log in</h3>		
		<form action="j_security_check" method="post">
			<input type="text" name="j_username" />
			<input type="password" name="j_password" />
			<input type="submit" value="Log In" />
		</form>
		<div class="spacer"></div>
	</div>
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>