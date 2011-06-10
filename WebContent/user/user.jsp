<jsp:include page="/WEB-INF/jsp/header.jsp"></jsp:include>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>
						
<div id="content">
	<div id="stylized" class="myform">
		<form id="form" name="form" method="post" action="Lab04.jsp">
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
</div>

<jsp:include page="/WEB-INF/jsp/footer.jsp"></jsp:include>