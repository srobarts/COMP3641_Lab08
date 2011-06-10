<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>
						
<div id="content">

	<% if (request.isUserInRole("user")) { %>
	
	<h3><a href="logout">Logout</a></h3>

	<div id="stylized" class="myform">
		<form id="form" name="form" method="post" action="querydb">
			<p>Input a correct SQL statement below to query the database.</p>
			
			<h3>Sample Query:</h3>
			<p>SELECT * FROM beatles<br />
			SELECT * FROM beatles WHERE title LIKE '%Help%'</p>
			
			<h3>Please input your query:</h3><br />
			<input SIZE="50" name="query" id="query" />
			
			<button type="submit">Submit</button>
			<div class="spacer"></div>
		</form>
	</div>

	<% } %>
	
	<% if (request.isUserInRole("guest")) { %>

	<h3><a href="logout">Logout</a></h3>
	
	<h2>Ick, lowly guest</h2>
	<p>We would like to serve you but you don't pay us</p>
	
	
	<% } %>
	


</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>